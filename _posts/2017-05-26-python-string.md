---
layout: post
date:   2017-05-26 23:04:00 +0800
categories: python
---
Python 的string模块提供了各种的字符
# Some strings for ctype-style character classification
```
  whitespace = ' \t\n\r\v\f'
  lowercase = 'abcdefghijklmnopqrstuvwxyz'
  uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  letters = lowercase + uppercase
  ascii_lowercase = lowercase
  ascii_uppercase = uppercase
  ascii_letters = ascii_lowercase + ascii_uppercase
  digits = '0123456789'
  hexdigits = digits + 'abcdef' + 'ABCDEF'
  octdigits = '01234567'
  punctuation = """!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~"""
  printable = digits + letters + punctuation + whitespace
```

我可以利用这一点来生成随机密码(不可以在生产环境使用，因为不是安全的随机数)
import random
import string
chars = list(string.printable)
# 洗牌随机排序
random.shuffle(chars)
生成10位随机密码
print ''.join(chars[10])
