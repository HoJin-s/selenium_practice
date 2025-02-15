import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import os
import sys
import django
from bs4 import BeautifulSoup

# 콘솔 출력 인코딩을 UTF-8로 변경
sys.stdout.reconfigure(encoding="utf-8")

# 현재 파일이 있는 폴더 (parser.py가 위치한 곳)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Django 프로젝트의 최상위 폴더(SELENIUM/)를 sys.path에 추가
sys.path.append(BASE_DIR)

# Django 프로젝트 설정 로드
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "selenium_practice.settings")
django.setup()

# 이제 Django ORM 사용 가능!
from articles.models import Article

# Chrome 웹 브라우저 옵션 설정
options = webdriver.ChromeOptions()
options.add_experimental_option("excludeSwitches", ["enable-logging"])
driver = webdriver.Chrome(options=options)

# 크롬 드라이버로 원하는 url 접속
driver.get("https://entertain.naver.com/ranking")

# 스크래핑
for i in range(4):
    print(f"{i+1}번째 기사 스크래핑중...")

    articles = driver.find_elements(By.CLASS_NAME, "NewsItem_news_item__fhEmd")
    # i 번째 기사 클릭
    article_link = articles[i].find_element(By.TAG_NAME, "a")
    article_link.click()

    WebDriverWait(driver, 10).until(
        lambda d: d.execute_script("return document.readyState") == "complete"
    )

    # 최대 10초 대기하면서 title text 로 가져오기
    title_element = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located(
            (By.CLASS_NAME, "NewsEndMain_article_title__kqEzS")
        )
    )
    title = title_element.text
    # print(f"제목 : {title}")

    # 본문과 이미지를 순서대로 저장할 리스트
    content_list = []

    try:
        # 최대 10초 대기하면서 content 가져오기
        article_content = WebDriverWait(driver, 10).until(
            EC.presence_of_element_located((By.CLASS_NAME, "_article_content"))
        )

        # 이미지 로드될 때까지 기다리기 (최대 10초)
        WebDriverWait(driver, 10).until(
            EC.presence_of_element_located(
                (By.CLASS_NAME, "NewsEndMain_image_wrap__djL-o")
            )
        )

        # Lazy Load 대비: 페이지를 맨 아래로 스크롤
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(2)  # 이미지 로딩 대기

        full_html = driver.execute_script(
            "return arguments[0].outerHTML;", article_content
        )
        soup = BeautifulSoup(full_html, "html.parser")

        thumb = False
        thumbnail = ""
        print(soup)
        for elem in soup.children:  # 모든 자식 요소 순회
            if elem.name == "span":  # 이미지가 포함된 span 태그
                img_tag = elem.find("img")
                if img_tag:
                    img_url = img_tag["src"]
                    content_list.append(img_url)  # 이미지 URL 저장
                    if not thumb:
                        thumbnail += img_url  # 첫 번째 이미지만 썸네일 저장
                        thumb = True
            elif elem.name == "div":  # 이미지가 포함된 div 태그
                img_tag = elem.find("img")
                if img_tag:
                    img_url = img_tag["src"]
                    content_list.append(img_url)  # 이미지 URL 저장
                    if not thumb:
                        thumbnail += img_url  # 첫 번째 이미지만 썸네일 저장
                        thumb = True
            elif elem.name is None:  # 텍스트 노드
                text = elem.strip()
                if text:
                    content_list.append(text)
            else:  # 기타 태그 내 텍스트
                text = elem.get_text(strip=True)
                if text:
                    content_list.append(text)

    except Exception as e:
        print("오류 발생:", e)

    # print(f"썸네일 : {thumbnail}")
    print(" ")

    # 데이터베이스에 저장
    Article.objects.create(title=title, content=content_list, thumbnail=thumbnail)

    # 뒤로가기 실행하여 이전 페이지로 돌아감
    driver.execute_script("window.history.go(-1)")
    WebDriverWait(driver, 10).until(
        lambda d: d.execute_script("return document.readyState") == "complete"
    )

# 크롬 드라이버 창 닫기
driver.quit()
