---
tags: [http]
---

这个文章主要两方面，一个是用来标识自身的User-agent概念，另一个是绕过限制的http代理的概念

## User-agent

```
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36

```

wget --user-agent="xxx"

culr -A "xxx"

python urllib
```
your_headers = {"User-agent":"xxx"}
urllib2.Request(headers=your_headers)
```


## Proxy agent


