---
layout: post
date:   2017-02-24 22:18:00 +0800
categories: linux
tags: [linux]
---

常见词汇：

tapxxx(用来连接虚拟机tap设备)

qbrxxx(Linux网桥)

qvmxxx(ovs端口)

plyxxx(ovs网桥)

br-int(ovs网桥)

br-tun(ovs网桥)

br-eth(ovs网桥)

目前最主要的疑问就是两台单板上的两个虚拟机怎么通过vxlan进行通信？

br-tun网桥上到底有什么？

可能有一个连接br-int的patch-port,还可能有个vxlan端口，那么到底有没有物理网卡接口呢？

最有可能的情况就是在br-tun上创建一个vxlan类型的接口vxlan0,然后给这个接口设置类似的选项options: {in_key=flow, local_ip="192.168.10.108", out_key=flow, remote_ip="192.168.10.107"}


```
# 添加网桥
ovs-vsctl add-br br-int

ovs-vsctl add-port br-int br-eth

ovs-vsctl add-br br-tun

# 创建Linux网桥
brctl addbr qbr0

ovs-vsctl add-br ply0

ovs-vsctl list interface tap1
```

## Qos

设置

```
ovs-vsctl set interface qvm0 ingress_policing_burst=100
ovs-vsctl set interface qvm0 ingress_policing_rate=1000
```
