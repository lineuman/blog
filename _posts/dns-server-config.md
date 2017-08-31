---
tags: [linux]
---

## 查看dns服务器ip,一定要注意措辞上面的差别

在windows上面`ipconfig /all`可以查看

在linux上看dns
```
cat /etc/hosts
cat /etc/resolv.conf
cat /etc/host.conf
```
为何是这三个文件？使用`strace ping www.baidu.com`查看打开的文件，可以推断出来。

## 修改dns服务器地址，一定注意措辞上面的差别

/etc/resolv.conf中添加nameserver ip_address

## 搭建dns服务器
