from django.db import models

# Create your models here.
# 编写程序应有的功能，负责业务对象与数据库的映射(ORM)
'''
数据库表设计,TestPaper>>>ExaminationQuestion>>>Select
Exam>>>Examinationquestion
高考试卷有多个试题,'真题'(有多个选项,正确答案,试题题干,解析),选项(标号,选项)
考试 多个来自高考试卷的'真题',
错题集 由考试的错题(也就是'真题')组成
'''


class TestPaper(models.Model):
    test_paper_name = models.CharField(max_length=254, verbose_name='试卷名')

    def __str__(self):
        return self.test_paper_name


class ExaminationQuestion(models.Model):
    test_paper = models.ForeignKey(TestPaper, on_delete=models.CASCADE)
    question_content = models.TextField(verbose_name='试题')
    answer = models.CharField(verbose_name='答案', max_length=1)
    explain = models.TextField(verbose_name='参考')

    def __str__(self):
        return self.question_content

    class Meta:
        verbose_name = '考试试题'
        verbose_name_plural = verbose_name


class Select(models.Model):
    question = models.ForeignKey(ExaminationQuestion, on_delete=models.CASCADE, verbose_name='考试试题')
    select_choice = models.CharField(max_length=1, verbose_name='选项')
    select_content = models.TextField(verbose_name='选项内容')


class Exam(models.Model):
    teacher = models.ForeignKey('huser.HUser', verbose_name='教师', on_delete=models.CASCADE)
    hclass = models.ForeignKey('huser.HClass', verbose_name='班级', on_delete=models.CASCADE)
    exam_name = models.CharField(verbose_name='考试名称', max_length=254)
    start_time = models.DateTimeField(verbose_name='开始时间')
    end_time = models.DateTimeField(verbose_name='结束时间')
    questions = models.ManyToManyField(ExaminationQuestion, verbose_name='试题', null=True)

    def __str__(self):
        return self.exam_name

    class Meta:
        verbose_name = '考试'
        verbose_name_plural = verbose_name
