# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-02-15 09:15
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0004_auto_20180211_1745'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='tag',
            field=models.CharField(default='', max_length=10, verbose_name='\u8bfe\u7a0b\u6807\u7b7e'),
        ),
    ]
