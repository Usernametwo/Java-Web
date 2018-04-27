<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>application的属性范围</title>
    </head>

    <body>
        <%
            //application将两个属性保存在服务器上，这是无论是否打开新的浏览器，都可以通过application取的属性
            //服务器重启属性将不复存在
            //从application属性范围中取出属性，并执行向下转型操作
            String Username = (String) application.getAttribute("name");
            String birthday = (String) application.getAttribute("birthday");
        %>

        <h2>姓名:<%=Username%></h2>
        <h2>生日:<%=birthday%></h2>
    </body>
</html>