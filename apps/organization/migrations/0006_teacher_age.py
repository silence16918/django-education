# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-02-19 10:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0005_auto_20180211_1745'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='age',
            field=models.IntegerField(default=18, verbose_name='\u5e74\u9f84'),
        ),
    ]
