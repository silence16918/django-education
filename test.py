#coding:utf-8
a = 1
for i in range(1,17):
    print "insert into courses_lesson values(" + str(a) + ",'第一章 环境准备',now()," + str(i) + ");"
    print "insert into courses_lesson values(" + str(a+1) + ",'第二章 基础知识',now()," + str(i) + ");"
    print "insert into courses_lesson values(" + str(a+2) + ",'第三章 环境准备',now()," + str(i) + ");"
    print "insert into courses_lesson values(" + str(a+3) + ",'第四章 功能完善',now()," + str(i) + ");"
    print "insert into courses_lesson values(" + str(a+4) + ",'第五章 线上部署',now()," + str(i) + ");"
    a = a+5


b = 0
c = 0
for i in range(1,17):
    print  "insert into courses_video values(" + str(b+1) + ",'1.1 安装mysql',now()," + str(
        c+1) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+2) + ",'1.2 安装nginx',now()," + str(
        c+1) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+3) + ",'1.3 安装python',now()," + str(
        c+1) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"

    print  "insert into courses_video values(" + str(b+4) + ",'2.1 python基础',now()," + str(
        c+2) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+5) + ",'2.2 html基础',now()," + str(
        c+2) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+6) + ",'2.3 mysql基础',now()," + str(
        c+2) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"

    print  "insert into courses_video values(" + str(b+7) + ",'3.1 model设计',now()," + str(
        c+3) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+8) + ",'3.2 搭建xadmin后台管理',now()," + str(
        c+3) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+9) + ",'3.3 用户注册登录',now()," + str(
        c+3) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"

    print  "insert into courses_video values(" + str(b+10) + ",'4.1 个人中心',now()," + str(
        c+4) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+11) + ",'4.2 网站安全',now()," + str(
        c+4) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+12) + ",'4.3 搜索功能',now()," + str(
        c+4) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"

    print  "insert into courses_video values(" + str(b+13) + ",'5.1 域名与服务器',now()," + str(
        c+5) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+14) + ",'5.2 nginx配置',now()," + str(
        c+5) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    print  "insert into courses_video values(" + str(b+15) + ",'5.3 上传文件',now()," + str(
        c+5) + ",'http://player.youku.com/player.php/sid/XMzIwNDQ4MDY0MA==/v.swf',20);"
    b = b+15
    c = c+5
