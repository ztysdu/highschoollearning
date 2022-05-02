import datetime
import time
import pytz

from django.template import Library


register = Library()


@register.filter()
def equal(arg):
    now = datetime.datetime.now()
    now = now.replace(tzinfo=pytz.timezone('UTC'))
    return arg > now


@register.filter()
def equal_b(arg):
    now = datetime.datetime.now()
    now = now.replace(tzinfo=pytz.timezone('UTC'))
    return arg > now
