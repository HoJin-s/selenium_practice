from django.db import models
from django.utils.timezone import localtime


# 게시글 모델
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    image = models.URLField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    day_of_week_category = models.CharField(max_length=20, editable=False)  # 요일 저장

    def save(self, *args, **kwargs):
        if not self.pk:
            self.day_of_week_category = localtime().strftime("%A")
        super().save(*args, **kwargs)

    def __str__(self):
        return str(self.title)

    class Meta:
        verbose_name_plural = "Articles"
