---
tags: [linux]
---


Disable tcp timestamps on your linux system（禁用tcp时间戳）

```
echo 0 > /proc/sys/net/ipv4/tcp_timestamps
```

write to config file `/etc/sysctl.conf`


```
# 禁用ip转发
net.ipv4.ip_forward=0
# 限制普通用户使用dmesg命令
kernel.dmesg_restrict=1
```
