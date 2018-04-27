<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>登录成功页面</title>
    </head>
    <body>
        <%
            if(session.getAttribute("userid")!=null) {
        %>
            <h3>欢迎<%=session.getAttribute("userid")%>光临</h3>

            <a href="logout.jsp">注销</a>
        <%  
            } else {
                //非法用户，未登录过
        %>   
                <h3>清先登录系统<a href="login.jsp">登录</a>!</h3>
        <%
            }
        %>
    </body>
</html>