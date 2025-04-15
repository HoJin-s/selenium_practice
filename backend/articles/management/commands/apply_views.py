import os
from django.core.management.base import BaseCommand
from django.db import connection
from django.conf import settings


class Command(BaseCommand):
    def handle(self, *args, **kwargs):
        sql_file_path = os.path.join(settings.BASE_DIR, "sql/create_views.sql")

        if not os.path.exists(sql_file_path):
            self.stdout.write(
                self.style.ERROR(f"파일을 찾을 수 없습니다 : {sql_file_path}")
            )
            return

        with open(sql_file_path, "r") as sql_file:
            sql_commands = sql_file.read()

        with connection.cursor() as cursor:
            cursor.execute(sql_commands)

        self.stdout.write(self.style.SUCCESS("성공적으로 SQL view가 적용되었습니다"))
