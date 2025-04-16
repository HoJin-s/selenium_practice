<template>
  <div>
    <Header />
    <router-view></router-view>
    <button class="top-button" @click="scrollToTop">Top</button>
    <Footer />
  </div>
</template>

<script setup>
import Header from "@/components/layout/Header.vue"
import Footer from "@/components/layout/Footer.vue"


function scrollToTop() {
  window.scrollTo({ top: 0, behavior: 'smooth' });
}
</script>

<style>
@import '@/assets/scss/_style.scss';
@import '@/assets/scss/layout/header.scss';
@import '@/assets/scss/layout/footer.scss';
</style>