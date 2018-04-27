<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>通过request取出设置的Cookie</title>
    </head>
    <body>
        <%
            //在每个客户端访问服务器的时候，服务器为了明确区分每一个客户端，都会自动设置一个JSESSIONID的Cookie，表示用户的唯一身份标识
            //设置了Cookie的保存时间之后，如果关闭了客户端的浏览器，重新打开后也可以去除之前的Cookie
            Cookie c[] = request.getCookies();
            for(int x=0;x<c.length;x++) {
        %>
            <h3><%=c[x].getName()%>-----><%=c[x].getValue()%></h3>
        <%
            }
        %>
    </body>
</html>