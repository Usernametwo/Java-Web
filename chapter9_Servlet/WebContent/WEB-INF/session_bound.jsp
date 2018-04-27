<%@page import="com.gb.listenerdemo.LoginUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//添加LoginUser类对象到session范围
		LoginUser user = new LoginUser("Usernametwo");
		session.setAttribute("user", user);
	%>
</body>
</html>