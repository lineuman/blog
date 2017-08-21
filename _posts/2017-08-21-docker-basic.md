---
tags: [docker]
---

docker基本概念与使用

从使用者的角度来说，docker不需要你有太多的知识，就如同linux命令一样，记住了就会用了，从开发者的角度来讲，docker涉及到隔离技术，涉及到更多知识。

docker使用的C/S架构，安装之后，后台进程自动拉起，通过docker命令与后台进行通信。


## 安装：
预置条件

64 cpu， linux内核>3.8

yum install docker-engine

ps -ef|grep docker 查看docker守护进程已经运行

## 卸载：

yum remove docker-engine

## 常用操作

docker load -i xxx.tar

docker images

docker run 

