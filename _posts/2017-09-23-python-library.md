---
tags: [python]
---
python标准库文档真是令人印象深刻,其中第八章节是各种算法的一个小集合，值得深入学习。

[https://docs.python.org/2/library/index.html](https://docs.python.org/2/library/index.html)

python原生的list并非线程安全的，我想它之所以这样是处于性能的设计。

8.3 collectios

双端队列
```
from collections import deque
d = deque('abcde')
d.pop()
d.popleft()
d.append()
d.appendleft()
```

8.10 Queue
```
from Queue import Queue
```
