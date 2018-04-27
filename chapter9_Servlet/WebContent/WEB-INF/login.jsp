<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>

	<script language="javascript">
		function validate(f) {
			if(!(/^\w{5,15}$/.test(f.userid.value))) {
				alert("用户id必须是5-15位");
				f.userid.focus();
				return false;
			}
			if(!(/^\w{5,15}$/.test(f.password.value))) {
				alert("密码id必须是5-15位");
				f.password.focus();
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<h2>用户登录程序</h2>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
		List<String> info = (List<String>) request.getAttribute("info");
		if(info != null) {
			Iterator<String> iter = info.iterator();
			while(iter.hasNext()) {
	%>
				<h4><%=iter.next() %></h4>
	<%
			}
		}
	%>
	<form action="LoginServlet" method="post" onSubmit="return validate(this)">
		用户id：<input type="text" name="userid" />   <br>
		密&nbsp&nbsp&nbsp码：<input type="text" name="password" />  <br>
		<input type="submit" value="submit" />
		<input type="reset" value="reset" />
	</form>
</body>
</html>