from django.contrib import admin
from .models import Article
from .models import CrawlerLog

admin.site.register(Article)
admin.site.register(CrawlerLog)
