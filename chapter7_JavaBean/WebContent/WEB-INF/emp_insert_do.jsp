<%@page import="com.gb.demo.factory.DAOFactory"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.gb.demo.vo.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>提交页面</title>
</head>
<body>
<!-- 在JSP中可以不处理异常,如果不处理异常那么将由WEB容器处理 -->
	<%
		Emp emp = new Emp();
		emp.setEmpno(Integer.parseInt(request.getParameter("empno")));
		emp.setEname(request.getParameter("ename"));
		emp.setJob(request.getParameter("job"));
		emp.setHiredate(new Date(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("hiredate")).getTime()));  //时间转换
		emp.setSal(Float.parseFloat(request.getParameter("sal")));
		try {
			if(DAOFactory.getIEmpDAOInstance().doCreate(emp)) {
	%>
	<h3>雇员信息添加成功</h3>
	<%
			} else {
	%>
	<h3>雇员信息添加失败</h3>
	<% 
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%> 
</body>
</html>