from django.shortcuts import render
from django.contrib.auth.views import LoginView, LogoutView
from django.urls import reverse_lazy
from django.views.generic import FormView

from huser.forms import UserLoginForm, RegisterForm
from huser.models import HUser, HClass
# Create your views here.
# 负责业务逻辑，并在适当时候调用 Model和 Template。


class Login(LoginView):
    # 登录类视图使用django-auth
    template_name = 'tuser/login.html'
    form_class = UserLoginForm


class Logout(LogoutView):
    # 登出视图
    pass


class Register(FormView):
    # 注册视图
    template_name = 'tuser/register.html'
    form_class = RegisterForm
    success_url = reverse_lazy('user:login')

    def form_valid(self, form):
        kwargs = form.cleaned_data
        password = kwargs.pop('password1')
        del kwargs['password2']
        kwargs['password'] = password
        kwargs['hclass'] = HClass.objects.get(class_name=kwargs['hclass'])
        HUser.objects.create_user(**kwargs)
        return super(Register, self).form_valid(form)
