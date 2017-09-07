---
tags: [http]
---

知其然，知其所以然

reference

[https://github.com/shekyan/slowhttptest/wiki](https://github.com/shekyan/slowhttptest/wiki)

slow http属于应用层的攻击，ip，mac都会暴露，当然你找个代理或许就能隐藏了。


## 使用

```
Test modes:
  -H               slow headers a.k.a. Slowloris (default)
  -B               slow body a.k.a R-U-Dead-Yet
  -R               range attack a.k.a Apache killer
  -X               slow read a.k.a Slow Read

```
## 防护

slow http防护措施

## 原理
-H 模式

客户端请求的结束标志是连续的\r\n\r\n

-B 模式

Content-Length指定了要提交的Body长度

-X 模式

通过调节tcp窗口大小来控制速度，让服务器慢速发送，同时把慢速发送的数据放入缓冲区。
