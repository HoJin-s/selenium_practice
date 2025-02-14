import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vueDevTools from 'vite-plugin-vue-devtools'
import path from 'path'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueDevTools(),
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    },
  },
  build: {
    // Vue 빌드 결과물을 Django static 폴더로
    outDir: path.resolve(__dirname, '../static'), 
    // 기존 빌드 파일 삭제 후 새로 생성
    emptyOutDir: true, 
    rollupOptions: {
      input: {
        // index.html을 템플릿 폴더로 이동
        main: path.resolve(__dirname, 'index.html') 
      },
      output: {
        entryFileNames: 'assets/[name].js',
        chunkFileNames: 'assets/[name].js',
        assetFileNames: 'assets/[name].[ext]',
      }
    }
  },
  server: {
    proxy: {
      '/api': 'http://127.0.0.1:8000', // Django API 프록시 설정
    }
  }
})
