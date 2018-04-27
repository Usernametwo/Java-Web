<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="count" scope="request" class="com.gb.demo.Count" />
	<h3>第<jsp:getProperty name="count" property="count" />次访问！</h3>
	<jsp:forward page="request_bean02" />
</body>
</html>