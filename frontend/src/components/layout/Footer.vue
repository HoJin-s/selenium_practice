<template>
    <div class="footer-container">
      <div class="footer-line"></div>
      <div class="footer-content-wrap">
        <div class="footer-title">
          <img src="@/assets/image/article.png" alt="logo"/>
          <h3>호진일보</h3>
        </div>
        <div class="footer-link-wrap">
          <div 
          v-for="article in linkList" key="list" 
          class="link-container"
          >
            <h3>{{ article.title }}</h3>
            <div>
              <ul v-for="link in article.data" key="link">
                <li>
                  <a :href="link.link" target="_blank">
                    <img src="@/assets/image/arrow.svg" alt="link_arrow"/>
                    {{ link.title }}
                  </a>
                </li>
              </ul>
            </div>
           
          </div>
        </div>
      </div>
      
    </div>
</template>

<script setup>
const linkList = {
  same: {
    title: '카테고리별 엔터기사',
    data: [
      {
        title: "영화",
        link: "https://m.entertain.naver.com/movie"
      },
      {
        title: "뮤직",
        link: "https://m.entertain.naver.com/music"
      },
      {
        title: "연애",
        link: "https://m.entertain.naver.com/relationship"
      },
      {
        title: "포토",
        link: "https://m.entertain.naver.com/photo"
      },
      {
        title: "드라마",
        link: "https://m.entertain.naver.com/drama"
      },
    ],

  },
  another: {
    title: '다른 카테고리 기사',
    data: [
      {
        title: "정치",
        link: "https://news.naver.com/section/100"
      },
      {
        title: "경제",
        link: "https://news.naver.com/section/101"
      },
      {
        title: "사회",
        link: "https://news.naver.com/section/102"
      },
      {
        title: "세계",
        link: "https://news.naver.com/section/104"
      },
      {
        title: "생활/문화",
        link: "https://news.naver.com/section/103"
      },
      {
        title: "IT/과학",
        link: "https://news.naver.com/section/105"
      }
    ]
  }
}

</script>

<style>
</style>