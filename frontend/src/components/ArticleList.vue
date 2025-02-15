<template>
  <div>
    article list
    <div class="category-btn-container">

    </div>
    <!-- {{ ArticleList }} -->
  </div>
</template>
  
<script setup>
import { ref } from 'vue';
import { DaysArticles } from "@/api/articleApi"

const ArticleList = ref([])
const days = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];

async function loadAllArticles() {
  const today = getDayOfWeek();
  let data = await DaysArticles(today);
  ArticleList.value = data
}

const getDayOfWeek = () => {
    const date = new Date();
    return days[date.getDay()];
};


loadAllArticles();

</script>
  
<style></style>