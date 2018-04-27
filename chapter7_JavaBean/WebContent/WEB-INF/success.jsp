<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="reg" scope="request" class="com.gb.demo.Register" />
<title>Insert title here</title>
</head>
<body>
<%	System.out.println("这是success页面"); %>
	用户名：<jsp:getProperty name="reg" property="name" /><br>
	年    龄：<jsp:getProperty name="reg" property="age" /><br>
	E-Mail:<jsp:getProperty name="reg" property="email" /><br> 
</body>
</html>