<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>response.sendRedirect()跳转到其他页面</title>
    </head>
    <body>
        <%
            //直接跳转,也属于客户端跳转
            //此种方式的跳转只能通过地址重写的方式传递参数
            response.sendRedirect("hello.htm");
        %>
    </body>
</html>