<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.gb.demo.SimpleBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>使用JSP的page命令导入所需要的javabean</title>
</head>
<body>
<% 
	SimpleBean simple = new SimpleBean();
	simple.setName("Usernametwo");
	simple.setAge(30);
%>
<h3>姓名:<%=simple.getName()%></h3>
<h3>年龄:<%=simple.getAge()%></h3>
</body>
</html>