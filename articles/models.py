from django.db import models


# 카테고리 모델
class Category(models.Model):
    CATEGORIES = (
        ("월요일", "월요일"),
        ("화요일", "화요일"),
        ("수요일", "수요일"),
        ("목요일", "목요일"),
        ("금요일", "금요일"),
        ("토요일", "토요일"),
        ("일요일", "일요일"),
    )
    name = models.CharField("카테고리", max_length=20, choices=CATEGORIES, null=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Categories"


# 게시글 모델
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    image = models.URLField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    day_of_week = models.CharField(max_length=10)
    category = models.ForeignKey(Category, null=False, on_delete=models.CASCADE)
    summary = models.TextField()

    def __str__(self):
        return str(self.title)

    class Meta:
        verbose_name_plural = "Articles"
