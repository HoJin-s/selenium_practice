<template>
  <div>
    <Header />
    <router-view></router-view>
    <Footer />
  </div>
</template>

<script setup>
import Header from "@/components/layout/Header.vue"
import Footer from "@/components/layout/Footer.vue"

</script>

<style>
@import '@/assets/scss/_style.scss';
@import '@/assets/scss/setting.scss';
@import '@/assets/scss/layout/header.scss';
@import '@/assets/scss/layout/footer.scss';
</style>