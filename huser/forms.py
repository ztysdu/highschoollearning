from django import forms
from django.forms import widgets
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm

from huser.models import HClass, HUser


class UserLoginForm(AuthenticationForm):
    username = forms.CharField(label='用户名',
                               required=True,
                               widget=forms.TextInput(attrs={'class': 'uk-input', 'placeholder': '用户名'}),
                               error_messages={'required': '用户名为必填项'})
    password = forms.CharField(label='密码',
                               required=True,
                               widget=widgets.PasswordInput(attrs={'class': 'uk-input', 'placeholder': '密码'}))


class RegisterForm(UserCreationForm):
    hclass = forms.ChoiceField(
        required=True,
        label='班级',
        choices=[(i.class_name, i.class_name) for i in HClass.objects.all()],
        widget=widgets.Select(attrs={'class': 'uk-select uk-inline uk-form-width-large uk-margin-medium-right'}),
    )
    is_teacher = forms.ChoiceField(
        required=True,
        label='身份',
        choices=(
            (True, '教师'),
            (False, '学生')
        ),
        widget=widgets.Select(attrs={'class': 'uk-select uk-inline uk-form-width-large uk-margin-medium-right'}),
    )
    username = forms.CharField(label='用户名',
                               required=True,
                               widget=forms.TextInput(attrs={'class': 'uk-input', 'placeholder': '用户名'}),
                               error_messages={'required': '用户名为必填项'})
    password1 = forms.CharField(label='密码',
                               required=True,
                               widget=widgets.PasswordInput(attrs={'class': 'uk-input', 'placeholder': '密码'}))
    password2 = forms.CharField(label='密码',
                                required=True,
                                widget=widgets.PasswordInput(attrs={'class': 'uk-input', 'placeholder': '确认密码'}))

    class Meta:
        model = HUser
        fields = ['username']