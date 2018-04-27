<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 通过反射完成的操作，在反射机制中可以通过getMethod()方法取得一个指定名称方法的Method对象，在这里传入的是属性的名称，可以根据属性名称找到对应的setter()方法，完成属性内容的设置 -->
<!-- age必须是数字，否则会出现异常 -->
<!-- 定义一个javabean，然后将全部的属性设置到对应的SimpleBean中 ，可以自动的进行类型转换-->
	<% 	request.setCharacterEncoding("utf-8"); %>
	<!-- scope为javabean的保存范围，与之前讲的差不多 -->
	<jsp:useBean id="simple" scope="page" class="com.gb.demo.SimpleBean" />
	<!-- name对应上面的id，"*"代表自动匹配，匹配的是参数名称是否与属性的名称相符合，如果符合则调用setter进行内容的设置 ,还有其他三种配置方式如下-->
	
	<!-- <jsp:setProperty name="simple" property="name" /> -->
	
	<!-- <jsp:setProperty name="simple" property="name" param="name"/>
		 <jsp:setProperty name="simple" property="age" param="age"/>	
	 -->
	
	<% 
		// <%int age = 10;% >
		// < jsp:setProperty name="simple" property="name" value="Usernametwo" />
	   	// <jsp:setProperty name="simple" property="age" value="<\%=age\% >" />
	 %>
	
	<jsp:setProperty name="simple" property="*"/>
	
	<h3>姓名：<%=simple.getName() %></h3>
	<h3>年龄：<%=simple.getAge() %></h3>
	
	<!-- getProperty获取属性，会自动调用getter方法 -->
	<h3>姓名：<jsp:getProperty name="simple" property="name" /></h3>
	<h3>年龄：<jsp:getProperty name="simple" property="age" /></h3>
</body>
</html>