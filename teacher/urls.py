from django.urls import path

from teacher import views


app_name = 'teacher'

urlpatterns = [
    path('release/', views.ReleaseExam.as_view(), name='release'),
    path('examlist/', views.ExamList.as_view(), name='examlist'),
]
