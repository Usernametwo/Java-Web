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
		request.setAttribute("name", "Usernametwo");
		//因为request属性只在一次服务器跳转内有效，所以想要观察到替换的方法调用需要重新设置
		request.setAttribute("name", "Usernametwo2");
		//删除方法同理
		request.removeAttribute("name");
	%>
</body>
</html>