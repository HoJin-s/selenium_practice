<template>
  <div>
    <div class="category-btn-container">
      <div 
      v-for="day in days" :key="day"
      class="day-btn"
      :class="{ active: selectedDay == day && !isHovered[day]}"
      @click="daySelect(day)"
      @mouseover="hoverOn(day)"
      @mouseleave="hoverOff(day)"
      >
        {{ day }}
      </div>
    </div>

    <!-- 기사 있을 때 -->
    <div class="loading_spinner_trade" v-if="!loadStatus">
      <div class="loading_circle_trade"></div>
    </div>
    <div v-if="ArticleList.length > 0 && loadStatus">
      <div v-for="article in ArticleList" :key="article">
        <RouterLink :to="`detail/${article.id}`" class="articles-list-container">
          <div v-if="article.thumbnail" class="defalt-thumbnail-wrap">
            <img :src="article.thumbnail" alt="thumbnail" />
          </div>
          <div v-else class="defalt-thumbnail">호진일보</div>
          <div class="article-content-wrap">
            <h3 class="aricles-title">{{ article.title }}</h3>
            <p>{{ article.long_content }}</p>
          </div>
        </RouterLink>
      </div>
    </div>

    <!-- 기사 없을 때 -->
    <div v-if="ArticleList.length == 0 && loadStatus" class="no-article-container">
      <div>{{ selectedDay }}자 기사가 없습니다.</div>

    </div>
    
  </div>
</template>
  
<script setup>
import { ref, onMounted } from 'vue';
import { DaysArticles } from "@/api/articleApi"

const ArticleList = ref(JSON.parse(localStorage.getItem('articles')) || []); // 기사 리스트
const selectedDay = ref(JSON.parse(localStorage.getItem('day')) || ''); // 선택된 날짜
const isHovered = ref({});
const days = [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
const loadStatus = ref(false);

// 금일로 선택된 날짜 변경
const getDayOfWeek = () => {
  const date = new Date();
  return days[date.getDay()];
};

// 기사 리스트 get api 호출
async function loadAllArticles(day) {
  loadStatus.value = false;

  if (localStorage.getItem('articles') == '') { return; }

  let today;

  if (!day && !selectedDay.value) {
    today = getDayOfWeek();
  }
  else if (!day && selectedDay.value) {
    today = selectedDay.value;
  }
  else {
    today = day;
  }

  selectedDay.value = today;
  let data = await DaysArticles(today);

  for (let article of data) {
    article.content = JSON.parse(article.content);
    
    let longestContent = '';
    article.content.forEach(contentItem => {
      if (contentItem.length > longestContent.length) {
        longestContent = contentItem;
      }
    });

    article.long_content = longestContent;
  }

  ArticleList.value = data;

  localStorage.setItem('articles', JSON.stringify(ArticleList.value));
  localStorage.setItem('day', JSON.stringify(selectedDay.value));
  loadStatus.value = true;
}

// 요일 버튼 클릭시 작동 함수
function daySelect(day) {
  ArticleList.value = [];
  localStorage.setItem('articles', JSON.stringify(''));
  loadAllArticles(day);
  selectedDay.value = day;
  localStorage.setItem('day', JSON.stringify(day));
}

// hover 시작 시 상태 변경
function hoverOn(day) {
  isHovered.value[day] = true;
}

// hover 종료 시 상태 변경
function hoverOff(day) {
  isHovered.value[day] = false;
}

onMounted(() => {
  window.scrollTo({ top: 0, behavior: 'smooth' });
  loadAllArticles();
})

</script>
  
<style>
@import '@/assets/scss/page/main.scss';
</style>