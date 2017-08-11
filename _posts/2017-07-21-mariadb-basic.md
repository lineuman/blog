---
tags: [database]
---

# rethat7 mariadb install

```
# yum安装

yum install mariadb mariadb-server

# 注意 服务名字是mariadb.service 而不是 mysqld.service

systemctl start mariadb.service

# 第一次设置密码

mysqladmin  -u root password 'your_password'

# mysql客户端建立连接

mysql -u root -p （交互式输入密码）


```

## mysql备份

`mysqldump`备份sql语句

mysqldump -u root -p dbname tablename > barkup.sql

## mysql还原

mysql -u root -p dbname <barkup.sql

## 基本usage
```
show databases;
use databasename;
show tables;
desc tablename;
show engines;
```

## 数据库压力性能测试
reference
[http://dbaplus.cn/news-11-148-1.html](http://dbaplus.cn/news-11-148-1.html)

可能影响整体系统性能的因素大致分为：

DB 层面：数据库的一些配置参数

OS 层面：CPU,MEM,DISK,NET等

存储层面：存储类型

## 压测工具
mysqlslap为mysql自带压测工具


