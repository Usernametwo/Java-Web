<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>设置定时刷新的头信息</title>
    </head>
    <body>
        <%!
            //定义全局变量
            int count = 0;
        %>
        <%
            response.setHeader("refresh", "2");
        %>

        <h3>已经访问了<%=count++%>次</h3>
    </body>
</html>