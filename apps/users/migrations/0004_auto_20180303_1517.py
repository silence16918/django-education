# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-03-03 15:17
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_auto_20180220_1944'),
    ]

    operations = [
        migrations.AlterField(
            model_name='banner',
            name='index',
            field=models.CharField(max_length=10, verbose_name='\u987a\u5e8f'),
        ),
    ]