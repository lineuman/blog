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
