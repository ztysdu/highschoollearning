from django.contrib import admin

from huser.models import HClass, HUser
# Register your models here.


admin.site.register([HClass, HUser])
# 注册模型类在后台进行管理