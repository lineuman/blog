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
