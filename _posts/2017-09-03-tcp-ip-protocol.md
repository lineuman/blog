---
tags: [network]
---
强烈推荐安装python的scapy模块进行学习

学习网络协议的工具`tcpdump` `nping` `nmap` `scapy`,通过这些工具可以抓取报文，或者构造报文

[https://securitylab.disi.unitn.it/lib/exe/fetch.php?media=teaching:netsec:2016:dos_report_-_group_5.pdf](https://securitylab.disi.unitn.it/lib/exe/fetch.php?media=teaching:netsec:2016:dos_report_-_group_5.pdf)

penetration

[https://pen-testing.sans.org/resources/papers/gwapt/tunneling-pivoting-web-application-penetration-testing-120229](https://pen-testing.sans.org/resources/papers/gwapt/tunneling-pivoting-web-application-penetration-testing-120229)

## 基础概念
mac，src, dst

ip，src, dst

port， src, dst
## ether

## arp
```
    Ethernet transmission layer (not necessarily accessible to
	 the user):
	48.bit: Ethernet address of destination
	48.bit: Ethernet address of sender
	16.bit: Protocol type = ether_type$ADDRESS_RESOLUTION
    Ethernet packet data:
	16.bit: (ar$hrd) Hardware address space (e.g., Ethernet,
			 Packet Radio Net.)
	16.bit: (ar$pro) Protocol address space.  For Ethernet
			 hardware, this is from the set of type
			 fields ether_typ$<protocol>.
	 8.bit: (ar$hln) byte length of each hardware address
	 8.bit: (ar$pln) byte length of each protocol address
	16.bit: (ar$op)  opcode (ares_op$REQUEST | ares_op$REPLY)
	nbytes: (ar$sha) Hardware address of sender of this
			 packet, n from the ar$hln field.
	mbytes: (ar$spa) Protocol address of sender of this
			 packet, m from the ar$pln field.
	nbytes: (ar$tha) Hardware address of target of this
			 packet (if known).
	mbytes: (ar$tpa) Protocol address of target.
 ```
arp请求

arp回复

arp缓存表

arp投毒

`nping –arp –arp-type ARP-reply 192.168.2.152 –arp-sender-ip 192.168.2.1 –arp-target-ip 192.168.2.152 -c 100`

Antiarp 
因为当回复icmp报文时候需要知道对应ip的mac地址，若果在arp表中找不到，则需要发送arp request来进行确认。

antiarp的原理就是发送源ip不在arp表中的icmp报文，迫使你发送arp request，从而达到消耗你的目的

`ping --icmp --icmp-type time --source-ip 不存在的源ip 目标ip -c 1000`
` hping3 -1 --fast   目标ip --rand-source`

## ipv4
ip头部一般占20个字节

## ipv6

## icmp
[https://www.rfc-editor.org/rfc/rfc792.txt](https://www.rfc-editor.org/rfc/rfc792.txt)

icmp请求

icmp回复

## tcp
tcp头部一般占20个字节

tcp三次握手

tcp四次分手

## udp
[http://www.ietf.org/rfc/rfc768.txt](http://www.ietf.org/rfc/rfc768.txt)

udp头部一般占据8个字节

```
                                    
                  0      7 8     15 16    23 24    31  
                 +--------+--------+--------+--------+ 
                 |     Source      |   Destination   | 
                 |      Port       |      Port       | 
                 +--------+--------+--------+--------+ 
                 |                 |                 | 
                 |     Length      |    Checksum     | 
                 +--------+--------+--------+--------+ 
                 |                                     
                 |          data octets ...            
                 +---------------- ...                 


```
# 应用协议集合

## http

## dns

## ntp
ntp反射放大攻击

ntp本身的拒绝服务漏洞

## ssh
sshd port 22

[https://www.exploit-db.com/exploits/40888/](https://www.exploit-db.com/exploits/40888/)

## vnc

vnc 客户端和服务端握手流程

1. 通过三次握手建立tcp连接

2. 服务端向客户端发送版本信息

3. 客户端向服务端发送版本信息



# 工具集合


slowhttptest

wrk

sqlmap


nmap

[nping](https://nmap.org/nping/)

hping

hping3

mz


# 网络虚拟化安全

## 链接跟踪数的使用
通过链接跟踪可以查看当前系统中建立的链接

假如你在一个宿主机上面建立多个虚拟机，那么虚拟机会占用主机的链接跟踪数，如果不做任何控制，恶意的虚拟机很快又可以占满全部链接跟踪数。

cat /proc/net/nf_conntrack

cat /proc/sys/net/netfilter/nf_conntrack_max

## ARP防欺骗

防欺骗的方法之一是IP和MAC地址绑定。对于虚拟化来说，虚拟机mac地址和IP对宿主机来说是可见的，也就是可以绑定的，这个防范可以做在ovs网桥上。
