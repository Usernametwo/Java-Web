<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<%
	//将scope定为scope主要是为了提醒错误,这些错误信息只使用一次，没必要将范围定的太大
%>
<jsp:useBean id="reg" scope="request" class="com.gb.demo.Register"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
<!-- 这个属于客户端跳转,所以跳转之后还会创建一个Register对象 -->
	<form action="check" method="post">
		用户名：<input type="text" name="name" value="<jsp:getProperty name='reg' property='name' />" />
			<%=reg.getErrorMsg("errorname") %><br>
		年    龄：<input type="text" name="age" value="<jsp:getProperty name='reg' property='age' />" />
			<%=reg.getErrorMsg("errorage") %><br>
		E-Mail：<input type="text" name="email" value="<jsp:getProperty name='reg' property='email' />" />
			<%=reg.getErrorMsg("erroremail") %><br>
			<input type="submit" value="submit" >
			<input type="reset" value="reset">
	</form>
</body>
</html>