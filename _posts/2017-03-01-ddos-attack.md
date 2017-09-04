---
layout: post
date:   2017-03-01 21:54:00 +0800
categories: security
tags: [security]
---

ddos有很多种，一种是Flood(像潮水一般，以力量取胜），还有是Malform(畸形报文，利用系统协议漏洞，以巧取胜）

还有一种放大反射攻击，例如我使用一个伪造IP的报文去访问dns服务器，dns服务器会根据报文里面的信息进行响应，dns服务器会向该ip发送信息，从而达到占用宽带的目的。

Syn泛洪攻击：它利用了tcp的三次握手机制，当服务端接收到一个syn请求时，协议软件必须利用一个监听队列将该连接保存一定时间。向服务端不停地发送syn,但是不响应syn+ack，这样消耗服务端的资源，然后服务端就不会响应正常用户的请求，从而达到拒绝服务攻击。
使用netstat -an -p tcp查看，如果SYN_RECV状态的连接非常多，说明有可能遭受攻击。
但是也有许多防御syn攻击的办法，例如首包丢弃，恶意黑名单，或者建立连接前使用一个门卫，也可以直接修改系统内核参数，在一定程度上进行保护。
net.ipv4.tcp_syncookies = 1
40kpps的流量就已经具有破坏力了。

还有应用层的HTTP层次的ddos,其实只要能够达到拒绝服务的目的，都可以称之为ddos

ddos测试之检测。

当你发起了ddos攻击，除了使用tcpdump/wireshark进行查看网卡上的包之外，还可以通过一些其他方法来衡量系统状态。

1. vnstat -l -i eth4 使用vnstat查看这段时间网卡收发包的个数和流量。
2. 使用top命令查看进程CPU百分比
3. 使用free查看是否有内存泄漏
4. 使用lsof查看是否有句柄泄漏
5. 使用df -h查看文件目录空间
6. 查看关键进程是否重启 记录进程pid或者是查看进程开始时间。
7. 查看是否有僵尸进程等 ps aux查看进程的状态， STAT列为Z的表示为僵尸进程
8. cat /proc/net/nf_conntrack查看建立的连接


## 常用工具

### http

[slowhttptest](https://github.com/shekyan/slowhttptest)

[wrk](https://github.com/wg/wrk)


[sqlmap](https://github.com/sqlmapproject/sqlmap)

### tcp/ip

nmap

nping(https://nmap.org/nping/)

hping

hping3

mz
