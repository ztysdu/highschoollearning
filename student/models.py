from django.db import models

# Create your models here.
from django.urls import reverse
from django.contrib.auth.views import get_user_model
# 编写程序应有的功能，负责业务对象与数据库的映射(ORM)


class Tag(models.Model):
    tag_name = models.CharField(verbose_name='标签名', max_length=54)


class KnowledgePoint(models.Model):
    tag = models.ForeignKey(Tag, verbose_name='标签', on_delete=models.CASCADE)
    title = models.CharField(verbose_name='标题', max_length=254)
    content = models.TextField(verbose_name='内容')
    video = models.URLField(verbose_name='视频')
    audio = models.URLField(verbose_name='音频')

    def __str__(self):
        return self.tag.tag_name + '-' + self.title

    class Meta:
        verbose_name = '知识点'
        verbose_name_plural = verbose_name

    # def get_absolute_url(self):
    #     reverse('')


class ExamRecord(models.Model):
    exam = models.ForeignKey('teacher.Exam', verbose_name='考试', on_delete=models.CASCADE)
    submit_time = models.DateTimeField(auto_now_add=True, verbose_name='提交时间')
    wrong = models.ManyToManyField('teacher.ExaminationQuestion', verbose_name='错题')
    correct_rate = models.FloatField(verbose_name='正确率', null=True)
    user = models.ForeignKey(get_user_model(), verbose_name='用户', on_delete=models.CASCADE)
