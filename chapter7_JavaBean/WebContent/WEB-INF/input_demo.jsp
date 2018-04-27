<%@page import="com.gb.demo.SimpleBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>通过request接受参数并且设置到javabean的对应属性中</title>
</head>
<% request.setCharacterEncoding("utf-8");    //解决提交乱码问题 %>  
<body>
	<%
		SimpleBean simple = new SimpleBean();
		simple.setAge(Integer.parseInt(request.getParameter("age")));
		simple.setName(request.getParameter("name"));
	%>

	<h3>姓名：<%= simple.getName() %></h3>
	<h3>年龄：<%= simple.getAge() %></h3>
</body>
</html>