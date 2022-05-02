from django.contrib import admin

from student.models import Tag, KnowledgePoint, ExamRecord
# Register your models here.


admin.site.register([Tag, KnowledgePoint, ExamRecord])
