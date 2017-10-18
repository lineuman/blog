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
## mysql创建用户
```
CREATE USER dbadmin@localhost IDENTIFIED BY 'password';
```
## mysql删除用户
```
DELETE FROM user WHERE User='username';
```

## MySQL Access Control System
mysql访问控制

## mysql授权
查看授权
```
SHOW GRANTS FOR dbadmin@localhost;
```

授权操作
```

```

## mysql收回权限
```

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
	
SHOW COLUMNS FROM database_name.table_name;
```

## 在命令行中执行mysql的sql语句
比如python既可以交互式也可以在命令行还可以写成脚本执行。（python -c "import this"）


因为mysql提供了-e这个参数选项，-e后面可以添加要执行的命令语句。
```
mysql -u root -p -e 'show databases;'
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

tcpcopy可以实现流量回放的功能
[https://github.com/session-replay-tools/tcpcopy](https://github.com/session-replay-tools/tcpcopy)


