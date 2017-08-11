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

修改密码
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

生成证书
```
passwd=dddddd
echo ${passwd}
expect << EOF
spawn openssl genrsa -aes256 -out cakey.pem 2048
expect "Enter pass phrase for cakey.pem:"
send "${passwd}\r"
expect "Verifying - Enter pass*"
send "${passwd}\r"
EOF
exec sleep 1 # 这一步很重要，不然生成的文件还是空的
```

yum安装自动yes,yum安装可以不使用expect
```
How do I force yum to install without prompting the user, using bash?
yum auto yes

yum -y install somepackage
```

用来输入yes
```

function confirm()
{
    expect -c "
        spawn ${*}
        set timeout 2000
        expect {
            \"*no)?\"  {
                send \"yes\r\"
                exp_continue
            }
            \"*No*?\"  {
                send \"Yes\r\"
                exp_continue
            }
            \"*Cancel*?\"  {
                send \"Cancel\r\"
                exp_continue
            }
        }"
}

```
