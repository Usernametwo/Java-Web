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
		String userid = request.getParameter("userid");
		if(!(userid==null)||"".equals(userid)) {
			session.setAttribute("userid", userid);
			response.sendRedirect("/chapter_9/list");
		}
	%>                                                            
	<form action="/chapter_9/login_listener" method="post" >
		用户名：<input type="text" name="userid" /><br>
		<input type="submit" value="submit" />
	</form>

</body>
</html>