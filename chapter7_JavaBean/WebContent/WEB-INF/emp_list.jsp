<%@page import="java.util.Iterator"%>
<%@page import="com.gb.demo.factory.DAOFactory"%>
<%@page import="com.gb.demo.vo.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>数据查询</title>
</head>
<body>
	<% 
		try {
			String keyWord = request.getParameter("kw");
			if(keyWord == null) {
				keyWord = "";
			}
			List<Emp> all = DAOFactory.getIEmpDAOInstance().findAll(keyWord);
			Iterator<Emp> iter = all.iterator();			
	%>
	<form action="emp_list" method="post">
		请输入关键字：<input type="text" name="kw" />
		<input type="submit" value="submit"/>
	</form>
	<table border="1" style="width:80%">
		<tr>
			<td>雇员编号</td>
			<td>雇员姓名</td>
			<td>雇员工作</td>
			<td>雇员工资</td>
			<td>雇佣时间</td>
		</tr>

	<% 
			while(iter.hasNext()) {
				Emp emp = iter.next();
	%>
		<tr>
			<td><%=emp.getEmpno() %></td>
			<td><%=emp.getEname() %></td>
			<td><%=emp.getJob() %></td>
			<td><%=emp.getSal() %></td>
			<td><%=emp.getHiredate() %></td>
		</tr>
	<% 
			}
	%>
	</table>
	<% 
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>