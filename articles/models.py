from django.db import models
from django.utils.timezone import localtime


# 게시글 모델
class Article(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    thumbnail = models.URLField(blank=True, null=True)
    day_of_week_category = models.CharField(max_length=20, editable=False)  # 요일 저장

    def _change_day(self, day):
        days = {
            "Monday": "월요일",
            "Tuesday": "화요일",
            "Wednesday": "수요일",
            "Thursday": "목요일",
            "Friday": "금요일",
            "Saturday": "토요일",
            "Sunday": "일요일",
        }

        return days[day]

    def save(self, *args, **kwargs):
        if not self.pk:
            self.day_of_week_category = localtime().strftime("%A")

        self.day_of_week_category = self._change_day(self.day_of_week_category)

        super().save(*args, **kwargs)

    def __str__(self):
        return str(self.title)

    class Meta:
        verbose_name_plural = "Articles"
