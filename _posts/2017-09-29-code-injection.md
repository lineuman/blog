---
tags: [security]
---
# 代码审计之命令注入

参考
[https://en.wikipedia.org/wiki/Code_injection](https://en.wikipedia.org/wiki/Code_injection)

本文主要总结各种编程语言中的危险函数，使用这些函数可能导致命令注入，通过脚本搜索源码中这些字符进行手工排查可以尽量集中发现注入点。

## python
```
# 内建函数
exec
eval
execfile

# os系列
'os.system'
'os.popen'
'os.spaw'
'os.exec'

# commands系列
commands.getoutput
commands.getstatusoutput

# subprocess系列
subprocess.Popen
['subprocess.call', 'True']
['subprocess.check_call', 'True'],
['subprocess.check_output', 'True'],

# 删除文件目录
os.remove
os.rmdir
os.removedirs
shutil.rmtree

'utils.execute'
'utils.execute_with_timeout']
‘write'
'writelines'
'compile'
'input'
'os.open'

'pickle'
'yaml('
```


## c and cpp 

## java

## php

## go

