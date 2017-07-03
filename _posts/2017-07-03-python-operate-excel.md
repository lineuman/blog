---
tags:[excel]
---

# 使用python处理excel文件`xls` `xlsx`
三个模块
```
xlrd
xlwt
xlutils
```

## xlrd
## xlutils
## xlwt
```
# 工作薄和表
import xlwt
workbook = xlwt.Workbook()
sheet = workbook.add_sheet('Sheet1')
# 单元格操作
写入
sheet.write(row, col, value, style)
合并
sheet.write_merge(row1, row2, col1, col2, value, style)
# style设置
样式
style = xlwt.XFStyle()
style.font = font
style.borders = borders

字体
font = xlwt.Font()
边框
borders = xlwt.borders()
```
