---
layout: post
title:  "Django之modules"
date:   2017-06-11 19:33:00 +0800
categories: django
tags: [django]
---

Django的model实现了编程语言级别对数据表的抽象，一个model代表一个数据表。
每一个属性代表数据表中的一列。

example:

```
    from django.db import models
       class  Person(models.Model):
             first_name = models.CharField()
             last_name = models.CharField()
```

model中最重要的部分是Field
Django use the field class types 头determine a few things:
1. 它告诉数据库要存储哪种类型数据
2. Field在表单验证时候也有用到


# Django的Field和Field里面的选项

[django model field](https://docs.djangoproject.com/en/dev/ref/models/fields/#django.db.models.AutoField)

```
AutoField
BigAutoFiled
A 64-bit integer, much like an AutoField except that it is guaranteed to fit numbers from 1 to 9223372036854775807.
BinaryField
BooleanField
CharField
DateField
DateTimeField
DecimalField
DurationField
EmailField
FileField
FielPathField
FloatField
ImageField
IntegerField
GenericIPAddressField
NullBooleanField
PositiveIntegerField
PositiveSmallIntegerField
SlugField
SmallIntegerField
TextField
TimeField
URLField
UUIDField
```

# Django Query
Once you created your data models, Django automatically gives you a database-abstraction API that lets you create, retrieve, update, and delete objects.`CRUD`

A models classs represents a database table, and an instance of that class represents a particalar record in the database table.

## QuerySet

## Manager

```
Blog.objects.filter(**kwargs)
.exclude（）
.all()
.get()
```


ref:

[https://docs.djangoproject.com/en/1.11/topics/db/queries/](https://docs.djangoproject.com/en/1.11/topics/db/queries/)
