# Generated by Django 5.1.6 on 2025-02-14 09:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0002_remove_article_summary'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='image',
        ),
    ]
