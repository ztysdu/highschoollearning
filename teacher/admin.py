from django.contrib import admin
from django.contrib.admin import ModelAdmin

from teacher.models import TestPaper, Exam, ExaminationQuestion, Select
# Register your models here.


admin.site.register([TestPaper, Exam, ExaminationQuestion, Select])
