<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 由于是page范围，所以会产生两个对象 -->
	<jsp:useBean id="count" scope="page" class="com.gb.demo.Count"></jsp:useBean>
	
	<h3>第<jsp:getProperty name="count" property="count" />次访问!</h3>
</body>
</html>