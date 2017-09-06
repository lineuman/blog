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
## http

## dns

## ntp



# 工具集合


slowhttptest

wrk

sqlmap


nmap

[nping](https://nmap.org/nping/)

hping

hping3

mz
