---
title: python excel

tags: [excel]
---
# 使用python处理excel文件`xls` `xlsx`
三个模块
```
xlrd
xlwt
xlutils
```

## xlrd
```
sheet.nrows
sheet.ncols
按行进行获取
sheet.row_values()
按列获取
sheet.col_values()

写入到内存中，但是xlrd本身不提供保存到文件的方法，需要结合xlutils进行保存
sheet.put_cell(row, col, ctype, value, 0)
sheet.cell(row, col)
sheet.cell().value
```
## xlutils
```
from xlutils import copy
book = copy.copy(workbook)
book.save('test.xls')
```
## xlwt

```
# 工作薄和表
import xlwt
workbook = xlwt.Workbook()
sheet = workbook.add_sheet('Sheet1')
workbook.save('test.xls')
# 单元格操作
写入单元格
sheet.write(row, col, value, style)
合并单元格
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
