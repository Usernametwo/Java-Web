<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>取得session的操作时间</title>
    </head>
    <body>
        <%
            long start = session.getCreationTime();   //session创建时间
            long end = session.getLastAccessedTime(); //session的最后一次操作时间
            long time = (end - start) / 1000 ;
        %>
        <h3>您已经停留了<%=time%>秒</h3>
        
    </body>
</html>