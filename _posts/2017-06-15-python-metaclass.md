---
layout: post
title:  "python metaclass"
date:   2017-06-15 10:25:16 +0800
categories: python
---
[a-primer-on-python-metaclasses](https://jakevdp.github.io/blog/2012/12/01/a-primer-on-python-metaclasses/)

# 到底什么是metaclass???

## Metaclass

### Class

### object

### type

classes are objects, and they are object of type type
 
`type(name, bases, dict) -> a new type`

type(name, bases, dct)

* name is a string giving the name of the class to be constructed
* bases is a tuple giving the parent classes of the class to be constructed
* dct is a dictionary of the attributes and methods of the class to be constructed
decorator

###  Custom Metaclasses(定制属于你的元类)
Now things get really fun. Just as we can inherit from and extend a class we've created, we can also inherit from and extend the `type` metaclass, and create custom behavior in our metaclass.

## python cookbook 3
9.13 using a metaclass to control instance creation

Using a metaclass to implement various instance create pattern can offer be a much elegant approach than other solutions not invoving metaclasses.

singleton(单例模式) 或者不允许实例化的类
