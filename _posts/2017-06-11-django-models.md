---
layout: post
title:  "Django-modules"
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
# F expressions
```
django.db.models.F
```

An F() object represents the value of a model field or annotated column. It makes it possible to refer to model field values and perform database operations using them without actually having to pull them out of the database into Python memory.

# Complex lookups with Q object
使用Q进行复杂的查询，例如select where 中的and or语句

## Q object

`django.db.models.Q`

Q 对象的好处就是允许你构建复杂的where语句，`sql中的AND, OR, NOT 对应于Q查询中的&, |, ~`


# Deleting objects
删除对象会删除数据库中的内容么？删除QuerySet时候确实会删除数据库里面内容


在遇到有外键的情况删除是怎么删的？
When Django deletes an object, by default it emulates the behavior of the SQL constraint ON DELETE CASCADE – in other words, any objects which had foreign keys pointing at the object to be deleted will be deleted along with it. For example:
```
b = Blog.objects.get(pk=1)
# This will delete the Blog and all of its Entry objects.
b.delete()
This cascade behavior is customizable via the on_delete argument to the ForeignKey.
```
## django app module register
`admin.site.register(YourModule)`

# Copying model instances

ref:

[https://docs.djangoproject.com/en/1.11/topics/db/queries/](https://docs.djangoproject.com/en/1.11/topics/db/queries/)
