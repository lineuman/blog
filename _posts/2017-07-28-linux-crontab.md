---
tags: [linux]
---
[reference：](https://www.pantz.org/software/cron/croninfo.html) 

## usage:

```
# For details see man 4 crontabs

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
```

```
# Minute   Hour   Day of Month       Month          Day of Week        Command    
# (0-59)  (0-23)     (1-31)    (1-12 or Jan-Dec)  (0-6 or Sun-Sat)                
    0        2          12             *                *            /usr/bin/find
```



* 使用逗号分隔多个值。

* 使用连字符指定某一范围的值。

* 可以用正斜线指定时间的间隔频率， 使用/代表每隔多长时间

* \*代表所有可能值

## example

每隔一分钟执行一次脚本
```
*/1 * * * *  zabbix bash /home/zabbix/tools/cronAgent.sh
```
