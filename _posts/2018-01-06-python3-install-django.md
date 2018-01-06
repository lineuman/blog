---
tags:[python]
---
# python34 django2.0开发环境搭建

## 如何安装pip3
```
yum install python34
sudo python3 -m ensurepip --default-pip
```
## django如何利用已经存在的表建立model
1.通过model生成django表

2.假如已经存在表我怎么反向退出model呢？

```
django-admin inspectdb > model.py
```
自动生成如下内容
```
# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Test(models.Model):
    caseid = models.CharField(db_column='caseId', max_length=256, blank=True, null=True)  # Field name made lowercase.
    method = models.CharField(max_length=32, blank=True, null=True)
    url = models.TextField(blank=True, null=True)
    head = models.TextField(blank=True, null=True)
    param = models.TextField(blank=True, null=True)
    before = models.TextField(blank=True, null=True)
    after = models.TextField(blank=True, null=True)
    gmt_create = models.DateTimeField()
    gmt_modify = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'test'
```

## 如何配置数据库
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '*****',
        'USER': '***',
        'PASSWORD':'*******',
        'HOST':'localhost',
    }
```

## 安装mysql客户端
```
 sudo yum install mysql-devel
 sudo yum install python34-devel
 sudo pip3 install mysqlclient
 ```
 
 ## 本地开发，服务端代码同步过程
 我在pycharm中开发完成发布到服务端要执行的命令，可以alias起个别名
 
 ```
 rsync -avz -e "ssh -p $portNumber" user@remoteip:/path/to/files/ /local/path/
 ```
