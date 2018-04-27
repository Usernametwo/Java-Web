<%@page import="com.gb.demo.vo.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>向数据库插入emp</title>
</head>
<body>
	<form action="emp_insert_do" method="post">
		雇员编号:<input type="text" name="empno"/><br>
		雇员姓名:<input type="text" name="ename"/><br>
		雇员职位:<input type="text" name="job"/><br>
		雇用日期:<input type="text" name="hiredate"/><br>
		基本工资:<input type="text" name="sal"/><br>
		<input type="submit" value="submir" />
		<input type="reset" value="reset" />
	</form>
</body>
</html>