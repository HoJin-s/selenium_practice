import ArticleView from "@/views/ArticleView.vue"
import ArticleList from "@/components/ArticleList.vue"
import ArticleDetail from "@/components/ArticleDetail.vue"


const routes = [
  { path: "/", redirect: "/article" },
  {
      path: "/article",
      name: "ArticleView",
      component: ArticleView,
      redirect: "/article/main",
      children: [
        { path: "main", component: ArticleList },
        { path: "detail/:id", component: ArticleDetail },
      ],
    },
  // 없는 페이지로 접근하면 "/"로 리다이렉트
{ path: "/:catchAll(.*)", redirect: "/" },
]

export default routes;
