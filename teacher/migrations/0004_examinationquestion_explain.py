# Generated by Django 3.1.1 on 2020-09-21 10:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('teacher', '0003_auto_20200921_1616'),
    ]

    operations = [
        migrations.AddField(
            model_name='examinationquestion',
            name='explain',
            field=models.TextField(default='无', verbose_name='参考'),
            preserve_default=False,
        ),
    ]
