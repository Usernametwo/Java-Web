<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>注销页面</title>
    </head>
    <body>
        <%
            response.setHeader("refresh", "2;URL=login.jsp");
            session.invalidate();
        %>
        <h3>您已成功退出系统，2秒后跳回首页</h3>
    </body>
</html>