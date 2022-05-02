from django.shortcuts import render

# Create your views here.
# 负责业务逻辑，并在适当时候调用 Model和 Template。

from django.urls import reverse_lazy
from django.views.generic import ListView, FormView
from django.contrib import messages
from django.contrib.messages.views import SuccessMessageMixin

from teacher.forms import ReleaseExamForm
from teacher.models import Exam, ExaminationQuestion, TestPaper


class ReleaseExam(SuccessMessageMixin, FormView):
    # 用于老师发布考试，其中会有五年高考真题供选择，以及处理试卷的生成
    form_class = ReleaseExamForm
    template_name = 'teacher/release.html'
    success_url = reverse_lazy('teacher:examlist')
    success_message = "%(exam_name)s was created successfully"

    def get_context_data(self, **kwargs):
        context = super(ReleaseExam, self).get_context_data(**kwargs)
        # context['testpapers'] = TestPaper.objects.get(test_paper_name='q2016').examinationquestion_set.all()
        context['testpapers'] = TestPaper.objects.all().order_by('id')
        return context

    def form_valid(self, form):
        kwargs = form.cleaned_data
        kwargs['teacher'] = self.request.user
        kwargs['hclass'] = self.request.user.hclass
        exam = Exam.objects.create(**form.cleaned_data)
        questions = self.request.POST.getlist('question', '')
        for question in questions:
            examquestion = ExaminationQuestion.objects.get(id=question)
            exam.questions.add(examquestion)
        return super(ReleaseExam, self).form_valid(form)


class ExamList(ListView):
    # 老师发布的考试列表
    template_name = 'teacher/exam-list.html'
    paginate_by = 7

    def get_queryset(self):
        queryset = Exam.objects.filter(teacher=self.request.user).order_by('start_time')
        return queryset
