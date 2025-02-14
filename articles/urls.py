from django.urls import path
from . import views

urlpatterns = [
    path(
        "<int:article_id>",
        views.ArticleDetailView.as_view(),
        name="article_detail_view",
    ),
    path(
        "<str:article_day_of_week_category>",
        views.ArticleView.as_view(),
        name="article_view",
    ),
]
