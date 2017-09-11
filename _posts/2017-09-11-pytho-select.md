---
tags: [python]
---
推荐阅读《unix网络编程卷1》学习IO模型
1. 阻塞式IO
2. 非阻塞式IO
3. IO复用
4. 信号驱动
5. 异步IO

python的select模块本质上是对c的封装，接下来将简单介绍下select的基本原理，select之所以能够实现，
是因为操作系统对描述符的状态监测的支持，这里的描述符不只是文件描述符，还包括socket等其他描述符。


一个整数代表一个描述符，例如0，1，2分别代表stdin, stdout, stderr

.fileno()

python select.select()的返回值是read, write, except

r, w, x = select.select([sock], [], [])

描述符就绪条件

对于文件描述符来说就是可读，可写

对于套接字描述符来说会更加复杂一点。

套接字准备好读

套接字准备好写


