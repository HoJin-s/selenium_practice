from rest_framework.generics import get_object_or_404
from rest_framework.views import APIView
from .models import Article
from .serializers import Article
from rest_framework.response import Response
from rest_framework import status
from .serializers import ArticleSerializer


class ArticleView(APIView):
    # 게시글 조회
    def get(self, request):
        articles = Article.objects.all()
        serializer = ArticleSerializer(articles, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)


class ArticleDetailView(APIView):
    # 게시글 상세 페이지
    def get(self, request, article_id):
        article = get_object_or_404(Article, id=article_id)
        serializer = ArticleSerializer(article)
        return Response(serializer.data, status=status.HTTP_200_OK)
