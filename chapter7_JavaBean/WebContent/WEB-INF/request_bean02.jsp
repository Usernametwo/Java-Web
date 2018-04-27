<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 由于是request范围，只会产生一个对象,而且在服务器跳转内有效
	同理session只有使用了一个新的session操作时才会重新创建javabean,
	application始终有效，除非服务器关闭
 -->
	<jsp:useBean id="count" scope="request" class="com.gb.demo.Count"></jsp:useBean>
	
	<!-- 删除javabean -->
	<% //request.removeAttribute("count"); %>
	<h3>第<jsp:getProperty name="count" property="count" />次访问!</h3>
</body>
</html>