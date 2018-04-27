<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>request的属性范围</title>
    </head>

    <body>
        <%
            //request在一次服务器跳转范围内有效，所以可以取得属性
            //如果换成超链接，则无法获得属性，因为这不是服务器跳转
            //从request属性范围中取出属性，并执行向下转型操作
            String Username = (String) request.getAttribute("name");
            String birthday = (String) request.getAttribute("birthday");
        %>

        <h2>姓名:<%=Username%></h2>
        <h2>生日:<%=birthday%></h2>
    </body>
</html>