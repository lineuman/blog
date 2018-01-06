---
tags: [mysql]
---
# mysql小技巧
---

delete from 单表子查询的时候出现如下问题

You can't specify target table 'asset' for update in FROM clause

以通过多加一层select 别名表来变通解决

例如
lichsh表
```
+---+---+
| a | b |
+---+---+
| 3 | 4 |
| 5 | 4 |
| 6 | 4 |
| 7 | 4 |
+---+---+
```

delete from lichsh where a in (select a from lichsh);  ===》(1093, u"You can't specify target table 'lichsh' for update in FROM clause")


https://mariadb.com/kb/en/library/derived-table-merge-optimization/

---

mysql expalin语句

---
### 使用阿里云建立数据表
可以总结为生成建表语句，很方便，很灵活

---
阿里云产品使用体会

发展到最后可能就剩下两种模式，一种是做基础服务的，另一种是在基础服务之上搞业务的。

```
linux云主机
mysql数据库
redis数据库
oss存储
访问控制功能
安全组设置
```
阿里云借助网络突破了传统边界，实现了资产服务化，为企业上云提供了便利条件。
