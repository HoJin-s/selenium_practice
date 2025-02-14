import js from '@eslint/js'
import pluginVue from 'eslint-plugin-vue'
import skipFormatting from '@vue/eslint-config-prettier/skip-formatting'

export default [
  {
    name: 'app/files-to-lint',
    files: ['**/*.{js,mjs,jsx,vue}'],
  },

  {
    name: 'app/files-to-ignore',
    ignores: ['**/dist/**', '**/dist-ssr/**', '**/coverage/**'],
  },

  js.configs.recommended,
  ...pluginVue.configs['flat/essential'],
  skipFormatting,

  {
    rules: {
      // __dirname과 같은 Node.js 내장 변수를 무시하지 않도록 설정
      'no-undef': ['error', { typeof: true }],
      // node 모듈 사용을 허용
      'import/no-nodejs-modules': 'off',
    },
  },
]
