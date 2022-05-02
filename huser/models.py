from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.
from django.shortcuts import render
# 编写程序应有的功能，负责业务对象与数据库的映射(ORM)

class HClass(models.Model):
    class_name = models.CharField(max_length=50)


class HUser(AbstractUser):
    choices = (
        (True, '教师'),
        (False, '学生')
    )
    hclass = models.ForeignKey(HClass, on_delete=models.CASCADE)
    is_teacher = models.BooleanField(verbose_name='身份', choices=choices)

    def __str__(self):
        return self.get_is_teacher_display() + '-' + self.username

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = verbose_name
#o.d