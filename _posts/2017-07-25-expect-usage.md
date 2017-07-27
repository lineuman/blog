---
tags: tcl
---

expect 语法
```
expect -c "
        spawn ssh  -o ConnectTimeout=0 root@ip\"ls\"
        set timeout  $TIMEOUT
        expect {
                \"*no)?\"  {
                        send \"yes\r\"
                        exp_continue
                }
                \"*assword:*\"  {
                        send \"$password\r\"
                        exp_continue
                }
        }
        "
```

examples
大部分情况参考例子修改下便可以了

注意：如下的expect语法中至少也得首字母是匹配的。

```
#!/bin/bash
passwd=rootPassword12!@
expect << EOF
spawn passwd root
expect "Password:"
send "${passwd}\r"
expect "Retype new password: "
send "${passwd}\r"
expect "passwd*"
EOF
~   
```
