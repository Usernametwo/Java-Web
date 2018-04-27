<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>page的属性范围</title>
    </head>

    <body>
        <%
            //因为page范围在跳转后无效，所以无法取得属性
            //从page属性范围中取出属性，并执行向下转型操作
            String Username = (String) pageContext.getAttribute("name");
            String birthday = (String) pageContext.getAttribute("birthday");
        %>

        <h2>姓名:<%=Username%></h2>
        <h2>生日:<%=birthday%></h2>
    </body>
</html>