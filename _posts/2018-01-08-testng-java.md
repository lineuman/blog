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
