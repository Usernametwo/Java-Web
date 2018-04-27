<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="simple" scope="page" class="com.gb.demo.SimpleBean" />
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>使用JSP中的标签指令来完成调用</title>
	<!-- 省略了实例化的步骤 -->
	<!-- 在jsp:useBean指令时需要定义对象所在的“包.类”名称，而且又要求类中存在无参构造方法，这是反射操作的前提条件 -->
	</head>
	<body>
	<%
		simple.setName("Usernametwo");
		simple.setAge(30);
	%>
	<h3>姓名：<%=simple.getName()%></h3>
	<h3>年龄：<%=simple.getAge()%></h3>
	</body>
</html>