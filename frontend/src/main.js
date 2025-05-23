import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import AOS from 'aos'
import router from './router'

const app = createApp(App)
app.use(createPinia()).use(router).mount('#app')
AOS.init()