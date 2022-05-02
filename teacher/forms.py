from django import forms
from django.forms import widgets


class ReleaseExamForm(forms.Form):
    exam_name = forms.CharField(
        label='考试名称',
        required=True,
        widget=widgets.Input(
            attrs={'class': 'uk-input uk-form-width-large'}
        )
    )
    start_time = forms.DateTimeField(
        label='起始时间',
        required=True,
        widget=widgets.DateTimeInput(
            attrs={'class': 'uk-input uk-form-width-large', 'type': 'datetime-local'}
        )
    )
    end_time = forms.DateTimeField(
        label='截止时间',
        required=True,
        widget=widgets.DateTimeInput(
            attrs={'class': 'uk-input uk-form-width-large', 'type': 'datetime-local'}
        )
    )
