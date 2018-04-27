<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>3秒后跳转到其他页面</title>
    </head>
    <body>
        <%
            //定时跳转属于客户端跳转
            //定时跳转也可以使用HTML实现，请见response_demo03.htm
            response.setHeader("refresh", "3;URL = hello.htm");
        %>

        <h3>3秒后跳转到其他页面，如果没有跳转请点击<a href="hello.htm">链接</a></h3>
    </body>
</html>