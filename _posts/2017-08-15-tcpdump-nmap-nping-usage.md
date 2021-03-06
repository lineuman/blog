---
tags: [linux]
---
# tcpdump

最常见的使用场景是tcpdump抓包然后使用wireshark进行分析

下面这个链接讲了一些基本用法

[https://www.tecmint.com/12-tcpdump-commands-a-network-sniffer-tool/](https://www.tecmint.com/12-tcpdump-commands-a-network-sniffer-tool/)

[https://www.rationallyparanoid.com/articles/tcpdump.html](https://www.rationallyparanoid.com/articles/tcpdump.html)

关键字，这些东西根本不用记，如同说话一般自然的东西何必要死记硬背呢？
官方文档

[http://www.tcpdump.org/tcpdump_man.html](http://www.tcpdump.org/tcpdump_man.html)

[http://alumni.cs.ucr.edu/~marios/ethereal-tcpdump.pdf](http://alumni.cs.ucr.edu/~marios/ethereal-tcpdump.pdf)

```
src     
dst
net
host
port
fddi
ether
arp
rarp
ip
icmp
tcp
udp
not
and
or
```
```
-a —— 将网络地址和广播地址转变成名字
-d —— 将匹配信息包的代码以人们能够理解的汇编格式给出
-dd —— 将匹配信息包的代码以c语言程序段的格式给出
-ddd —— 将匹配信息包的代码以十进制的形式给出
-e —— 在输出行打印出数据链路层的头部信息
-f —— 将外部的Internet地址以数字的形式打印出来
-l —— 使标准输出变为缓冲行形式
-n —— 不把网络地址转换成名字
-t —— 在输出的每一行不打印时间戳
-v —— 输出一个稍微详细的信息，例如在ip包中可以包括ttl和服务类型的信息
-vv —— 输出详细的报文信息
-c —— 在收到指定的包的数目后，tcpdump就会停止(count)
-F —— 从指定的文件中读取表达式,忽略其它的表达式
-i —— 指定监听的网络接口(interface)
-r —— 从指定的文件中读取包(这些包一般通过-w选项产生)(read)
-w —— 直接将包写入文件中（write）
-T —— 将监听到的包直接解释为指定的类型的报文，仅支持有限格式
```
# nmap

reference:
[https://nmap.org/book/man.html](https://nmap.org/book/man.html)

example

```
PORT     STATE SERVICE  VERSION
22/tcp   open  ssh      OpenSSH 6.6.1 (protocol 2.0)
|_ssh-hostkey: ERROR: Script execution failed (use -d to debug)
```

The state is either open, filtered, closed, or unfiltered. 
Open means that an application on the target machine is listening for connections/packets on that port. 

Filtered means that a firewall, filter, or other network obstacle is blocking the port so that Nmap cannot tell whether it is open or closed. 

Closed ports have no application listening on them, though they could open up at any time. 

Ports are classified as unfiltered when they are responsive to Nmap's probes, but Nmap cannot determine whether they are open or closed. Nmap reports the state combinations open|filtered and closed|filtered when it cannot determine which of the two states describe a port(例如有时候你收到了一个回复，但是你不知道这个回复是端口回复的，还是防火墙回复的)

# nping
arp replay 通常所说的arp投毒，也就是你会以为某个ip的mac地址在另一个位置。

sudo nping --arp --arp-type ARP-reply 192.168.2.152 --arp-sender-ip 192.168.2.1 --arp-target-ip 192.168.2.152 -c 100

# hping3

`hping3 -c 10000 -d 120 -S -w 64 -p 21 --flood --rand-source www.hping3testsite.com`

# iperf3
[https://github.com/esnet/iperf](https://github.com/esnet/iperf)
```
unzip iperf.zip
./configure
make
make install
```
iperf是用来测量网络宽带的一个工具

# vnstat
[https://github.com/vergoh/vnstat](https://github.com/vergoh/vnstat)

网络流量统计

