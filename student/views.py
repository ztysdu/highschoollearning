from django.shortcuts import render, redirect

# Create your views here.
import datetime
# 负责业务逻辑，并在适当时候调用 Model和 Template。

from django.urls import reverse_lazy
from django.views.generic import ListView, FormView, DetailView
from django.contrib import messages
from django.views.generic.base import View

from student.models import KnowledgePoint, ExamRecord
from teacher.models import Exam, ExaminationQuestion


class KnowledgePointView(ListView):
    # 渲染知识点列表
    model = KnowledgePoint
    template_name = 'student/knowledgepoint.html'
    paginate_by = 7
    ordering = 'id'


class WrongQuestionSet(ListView):
    # 渲染错题列表，queryset通过用户来筛选自己的错题
    template_name = 'student/wrong-list.html'
    model = ExamRecord
    paginate_by = 7

    def get_queryset(self):
        examrecords = ExamRecord.objects.filter(user=self.request.user)
        return examrecords


class ExamList(ListView):
    # 用户考试列表，其模板里面有大量有关考试时间，和是否考试过的逻辑
    template_name = 'student/exam-list.html'
    paginate_by = 7

    def get_queryset(self):
        queryset = Exam.objects.filter(hclass=self.request.user.hclass).order_by('-start_time')
        return queryset


class ExamBegin(DetailView):
    # 用于用户开始考试， 为用户生成试题，以及处理用户的考试题提交
    template_name = 'student/exam-do.html'
    model = Exam

    def post(self, request, pk):
        exam = Exam.objects.get(pk=pk)
        examrecord = ExamRecord.objects.create(user=request.user, exam=exam)
        formdict = request.POST.copy()
        del formdict['csrfmiddlewaretoken']
        for k, v in formdict.items():
            question = ExaminationQuestion.objects.get(id=k)
            if question.answer == v:
                pass
            else:
                examrecord.wrong.add(question)
        examrecord.correct_rate = 1 - examrecord.wrong.count()/examrecord.exam.questions.count()
        examrecord.save()
        return redirect(reverse_lazy('student:examlist'))
