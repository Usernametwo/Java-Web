<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>application的属性范围</title>
    </head>

    <body>
        <%
            // Create an instance of SimpleDateFormat used for formatting 
            // the string representation of date (month/day/year)
            DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

            // Get the date today using Calendar object.
            Date today = Calendar.getInstance().getTime();        
            // Using DateFormat format method we can create a string 
            // representation of a date with the defined format.
            String reportDate = df.format(today);
            //设置application属性范围，此属性保存在服务器上
            //application属性设置过多会影响服务器性能
            application.setAttribute("name", "Usernametwo");
            application.setAttribute("birthday",reportDate);
        %>
    <a href="application_scope_02.jsp">通过超链接可以取得application属性 </a>
    </body>
</html>