---
categories: django
tags: [django]
---

# django restf ramework
reference

[http://www.django-rest-framework.org/](http://www.django-rest-framework.org/)

[https://blog.sentry.io/2017/06/22/debugging-python-errors](https://blog.sentry.io/2017/06/22/debugging-python-errors)

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

