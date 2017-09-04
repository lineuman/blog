---
tags: [network]
---
强烈推荐安装python的scapy模块进行学习

学习网络协议的工具`tcpdump` `nping` `nmap` `scapy`,通过这些工具可以抓取报文，或者构造报文

[https://securitylab.disi.unitn.it/lib/exe/fetch.php?media=teaching:netsec:2016:dos_report_-_group_5.pdf](https://securitylab.disi.unitn.it/lib/exe/fetch.php?media=teaching:netsec:2016:dos_report_-_group_5.pdf)

## 基础概念
mac，src, dst

ip，src, dst

port， src, dst

## arp
arp请求

arp回复
## 以太网报文

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
