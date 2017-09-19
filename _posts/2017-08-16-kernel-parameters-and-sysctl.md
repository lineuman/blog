---
tags: [linux]
---

[https://www.kernel.org/doc/](https://www.kernel.org/)是学习内核的不二之选

[ip-sysctl相关](https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt)

Disable tcp timestamps on your linux system（禁用tcp时间戳）

```
echo 0 > /proc/sys/net/ipv4/tcp_timestamps
```

write to config file `/etc/sysctl.conf`



建议使用下面的命令进行查看
```
sysctl -a|grep "arp"
sysctl -a|grep "syn"
sysctl -a|grep "icmp"

```
```
# 禁用ip转发
net.ipv4.ip_forward=0
# 限制普通用户使用dmesg命令
kernel.dmesg_restrict=1
禁止 IP 源路由
禁用 IP 转发功能
IP 欺骗防护
net.ipv4.conf.all.rp_filter = 1
net.ipv4.conf.default.rp_filter = 1
禁止 ICMP 重定向接收 
防止 ICMP 重定向发给别的系统
确保伪造的 ICMP 包被丢弃
设置TIMEOUT超时时间
net.ipv4.tcp_fin_timeout = 60
关闭arp代理
```
