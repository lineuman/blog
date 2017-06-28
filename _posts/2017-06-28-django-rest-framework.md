---
categories: django
tags: [django]
---

# django restf ramework
reference

[http://www.django-rest-framework.org/](http://www.django-rest-framework.org/)

[https://blog.sentry.io/2017/06/22/debugging-python-errors](https://blog.sentry.io/2017/06/22/debugging-python-errors)

## 我的看法

1.依我看restful非常适合用来展示数据库中的内容
2.微服务每个组件互相之间不依赖适合搞rest

## install

`pip install djangorestframework`

## user it in django
```
django-admin.py startproject your_project
python manage.py startapp your_app
python manage.py makemigrations
python manage.py migrate
python manage.py  createsuperuser
# do some thing 
python manage.py runserver
```

## setting中的配置

INSTALLED_APPS中加入rest-framework

REST_FRAMEWORK配置

##　your_app中不同于普通django的文件
```
models.py
views.py
restapi.py
serializer.py
```

