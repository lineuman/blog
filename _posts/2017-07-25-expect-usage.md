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
