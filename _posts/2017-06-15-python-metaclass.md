---
layout: post
title:  "python metaclass"
date:   2017-06-15 10:25:16 +0800
categories: python
---
[a-primer-on-python-metaclasses](https://jakevdp.github.io/blog/2012/12/01/a-primer-on-python-metaclasses/)

[http://eli.thegreenplace.net/2011/08/14/python-metaclasses-by-example](http://eli.thegreenplace.net/2011/08/14/python-metaclasses-by-example)

## 到底什么是metaclass???
假如你想创建一个类（注意是类，不是类的实例），那么你可以使用`__mateclass__`属性来告诉这个类怎么来构造。

## 生成类的方式
* 使用class关键字创建一个类
* 使用type生成类
* 使用type的子类来生成类


## Metaclass
```
class Interface(object):
    __metaclass__ = InterfaceMeta
    file = 'tmp.txt'
    
print(Interface.class_id)
print(Interface.file)
```
`__metaclass__`

by defining the `__metaclass__` attribute of the class, we've told the class that it should be constructed using `InterfaceMeta` rather than using `type`. To make this more definite, observe that the type of Interface is now InterfaceMeta:

`type(Interface)`

`__main__.InterfaceMeta`


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
### metaclass和继承的区别？

## python cookbook 3
9.13 using a metaclass to control instance creation

Using a metaclass to implement various instance create pattern can offer be a much elegant approach than other solutions not invoving metaclasses.

singleton(单例模式) 或者不允许实例化的类

## example
Django meta
