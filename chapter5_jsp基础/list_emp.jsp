<%@ page contentType="text/html;charset=GBK" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <title>jsp页面连接数据库</title>
    </head>
    <body>
    <%!
        //定义数据库驱动程序
        public static final String DBDRIVER = "com.mysql.jdbc.Driver";
        //数据库连接地址
        public static final String DBURL = "jdbc:mysql://localhost:3306/airline_booking_system";
        public static final String DBUSER = "Usernametwo";
        public static final String DBPASSWORD = "password";
    %>

    <%
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD);
            String sql = "SELECT id_airline, airline_name FROM airline";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
    %>
        <table border="1" style="width:80%">
            <tr>
                <td>id_airline</td>
                <td>airline_name</td>
            </tr>
        <%
            while(rs.next()) {
                int id_airline = rs.getInt(1);
                String airline_name = rs.getString(2);
        %>
            <tr>
                <td><%=id_airline%></td>
                <td><%=airline_name%></td>
            </tr>
        <%
            }
        %>
        </table>
    <%
        }catch(Exception e) {
            e.printStackTrace();
        } finally {
            try {
                rs.close();
                pstmt.close();
                conn.close();
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
    %>
    </body>

</html>