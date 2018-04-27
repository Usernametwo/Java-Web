<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>取得session id</title>
    </head>
    <body>
        <%
        //session id 使用了Cookie的机制，和之前Cookie里面的JSESSIONID是一样的
            String id = session.getId();
        %>
        <h3>SESSION ID:<%=id%></h3>
        <h3>SESSION ID 长度：<%=id.length()%></h3>
    </body>
</html>