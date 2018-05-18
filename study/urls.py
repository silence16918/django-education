#coding:utf-8
"""study URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.views.generic import TemplateView
import xadmin
from django.views.static import serve

from users.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwdView, LogoutView, IndexView
from organization.views import OrgView
from study.settings import MEDIA_ROOT, STATIC_ROOT


urlpatterns = [

    url(r'^xadmin/', xadmin.site.urls), #后台

    url('^$', IndexView.as_view(), name="index"), #首页

    url('^login/$', LoginView.as_view(), name="login"), #登录

    url('^logout/$', LogoutView.as_view(), name="logout"), #退出

    url('^register/$', RegisterView.as_view(), name="register"), #注册
    url(r'^captcha/', include('captcha.urls')), #验证码
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="user_active"), #邮箱激活

    url(r'^forget/$', ForgetPwdView.as_view(), name="forget_pwd"), #忘记密码
    url(r'^reset/(?P<active_code>.*)/$', ResetView.as_view(), name="reset_pwd"), #重置密码
    url(r'^modify_pwd/$', ModifyPwdView.as_view(), name="modify_pwd"), #修改密码

    #课程机构url配置
    url(r'^org/', include('organization.urls', namespace="org")),

    #课程相关url配置
    url(r'^course/', include('courses.urls', namespace="course")),

    #个人中心url配置
    url(r'^users/', include('users.urls', namespace="users")),

    #配置上传文件的访问处理函数
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),

    url(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT}),

]


handler404 = 'users.views.page_not_found'

handler500 = 'users.views.page_error'

handler403 = 'users.views.forbidden'

















