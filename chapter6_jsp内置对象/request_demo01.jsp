<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>
            接受表单内容
        </title>
    </head>
    <body>
        <%
            //设置统一编码
            request.setCharacterEncoding("utf-8");
            //接受一个参数的内容
            String content=request.getParameter("info");
        %>
        <h2>
            <%=content%>
        </h2>
    </body>
</html>