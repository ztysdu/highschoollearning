from django.urls import path
from student import views


app_name = 'student'

urlpatterns = [
    path('knowledgepoint/', views.KnowledgePointView.as_view(), name='knowledgepoint'),
    path('examlist/', views.ExamList.as_view(), name='examlist'),
    path('examdo/<slug:pk>', views.ExamBegin.as_view(), name='examdo'),
    path('wrong/', views.WrongQuestionSet.as_view(), name='wrong'),
]
