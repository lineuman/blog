---
tags: [java]
---

# testng dataprovider
```
从数据源读取数据，进行自动循环测试的方法
从数据中读取数据，进行测试
从xml中读取数据
从json中读取数据
从csv中读取数据
```
```
import java.sql.*;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * @author lineuman
 */


public class DataProvider_forDB implements Iterator {

    ResultSet rs;
    ResultSetMetaData rd;

    public DataProvider_forDB(String ip, String port, String baseName,
                              String userName, String password, String sql) throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");
        String url = String.format("jdbc:mysql://%s:%s/%s?characterEncoding=utf8", ip, port, baseName);
        Connection conn = DriverManager.getConnection(url, userName, password);
        Statement createStatement = conn.createStatement();

        rs = createStatement.executeQuery(sql);
        System.out.println(rs);
        rd = rs.getMetaData();

    }

    @Override
    public boolean hasNext() {
        boolean flag = false;
        try {
            flag = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public Object[] next() {
        Map data = new HashMap();
        try {
            for (int i = 1; i <= rd.getColumnCount(); i++) {
                data.put(rd.getColumnName(i), rs.getString(i));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Object r[] = new Object[1];
        r[0] = data;
        return r;
    }

    @Override
    public void remove() {
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
```

# testng listener
[https://www.ibm.com/developerworks/cn/opensource/os-cn-testinglistener/index.html](https://www.ibm.com/developerworks/cn/opensource/os-cn-testinglistener/index.html)
尽管 TestNG 的默认配置已经提供了不少强大的功能和灵活的选项，但是没有一种方案能够解决所有的问题。在实际应用中，我们多多少少会发现 TestNG 自带的功能无法满足我们的一些实际需求，尤其是关于测试方法运行的行为、报表以及通知功能。此时，我们就需要使用 TestNG 的监听器定制额外的功能以满足我们的需要。


