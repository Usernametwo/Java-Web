<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>动态包含指令（传递参数）</title>
    </head>
    <%
        String param = "hello,world";      //定义传递的参数
    %>

    <h1>动态包含并传递参数</h1>
    <jsp:include page="receive_param.jsp" >
        <jsp:param name="name" value="<%=param%>" />
        <jsp:param name="info" value="fucker" />
    </jsp:include>
</html>