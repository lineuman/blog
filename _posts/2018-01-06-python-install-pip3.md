---
tags:[python]
---
# python3 django开发环境搭建

## 如何安装pip3
```
yum install python34
sudo python3 -m ensurepip --default-pip
```
## django如何利用已经存在的表建立model
1.通过model生成django表

2.假如已经存在表我怎么反向退出model呢？

```
django-admin inspectdb > model.py
```
