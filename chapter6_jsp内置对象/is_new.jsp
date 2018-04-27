<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>判断是否是新用户</title>
    </head>
    <body>
        <%
        //通过Cookie的方式判断的，第一次通过request取得全部Cookie是不会出现JSESSIONID的，而第二次却会出现这个系统内建的JSESSIONID
        //这是由于此Cookie是在第一次访问时由服务器设置给客户端的，所有服务器可以依靠是否存在JSESSIONID来判断此用户是否为新用户
            if(session.isNew()) {
        %>
                <h3>欢迎新用户光临!</h3>
        <%
            } else {
        %>
                <h3>您已经是老用户了</h3>
        <%
            }
        %>
        
    </body>
</html>