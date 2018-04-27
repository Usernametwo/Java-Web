<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>session的属性范围</title>
    </head>

    <body>
        <%
            //session在一个浏览器中始终有效，所以可以取得属性
            //如果再打开一个新的浏览器直接访问此页面，则无法取得设置的session属性
            //从session属性范围中取出属性，并执行向下转型操作
            //每一个新的浏览器连接上服务器后就是一个新的session，所以新的浏览器打开后无法取的其他session设置的属性
            String Username = (String) session.getAttribute("name");
            String birthday = (String) session.getAttribute("birthday");
        %>

        <h2>姓名:<%=Username%></h2>
        <h2>生日:<%=birthday%></h2>
    </body>
</html>