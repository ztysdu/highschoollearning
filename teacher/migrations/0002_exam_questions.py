# Generated by Django 3.1.1 on 2020-09-21 03:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('teacher', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='exam',
            name='questions',
            field=models.ManyToManyField(to='teacher.ExaminationQuestion', verbose_name='试题'),
        ),
    ]