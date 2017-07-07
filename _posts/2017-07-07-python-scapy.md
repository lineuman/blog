---
title: python scapy 
tags: [python]
---

# scapy
scapy 是python三方库，是发包，改包，分析包的工具，可用来进行fuzz测试或者学习网络协议
[https://github.com/Larryxi/Scapy_zh-cn](https://github.com/Larryxi/Scapy_zh-cn)
网络四层： 链路，网络，传输，应用

## FAQ:

1. 如何进行发包？
2. 如何控制发包个数和速率？
3. 如何修改包的参数？
4. 支持的协议类型有哪些？
5. 使用的技巧？
```
from scapy.all import *
ls()
lsc()
help(IP)
```
6. 如何从指定网卡发包？
7. 如何把不同协议层连接起来？
8. 如何发包从而实现tcp三次握手连接？
