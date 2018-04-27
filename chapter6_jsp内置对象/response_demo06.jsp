<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>向客户端添加Cookie</title>
    </head>
    <body>
        <%
            //通过设置头信息的方式来完成Cookie操作(不太常见)
            response.setHeader("Set-Cookie", "setHeader=throughHeader");
        %>

        <%
            Cookie c1 = new Cookie("user", "Usernametwo");
            Cookie c2 = new Cookie("password", "myadmin");
            c1.setMaxAge(60);      //设置Cookie的最大保存时间   60s
            c2.setMaxAge(60);
            //cookie不能无限制的保存，一般一个客户端最多只能保存300多个Cookie
            response.addCookie(c1);       //向客户端添加cookie
            response.addCookie(c2);
        %>
    </body>
</html>