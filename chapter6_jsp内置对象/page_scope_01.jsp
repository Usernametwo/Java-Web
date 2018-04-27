<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>page的属性范围</title>
    </head>

    <body>
        <%
            // Create an instance of SimpleDateFormat used for formatting 
            // the string representation of date (month/day/year)
            DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

            // Get the date today using Calendar object.
            Date today = Calendar.getInstance().getTime();        
            // Using DateFormat format method we can create a string 
            // representation of a date with the defined format.
            String reportDate = df.format(today);
            //设置page属性，此属性只在当前的jsp页面中起作用
            pageContext.setAttribute("name", "Usernametwo");
            pageContext.setAttribute("birthday",reportDate);
        %>
        <%
            //从page属性范围中取出属性，并执行向下转型操作
            String Username = (String) pageContext.getAttribute("name");
            String birthday = (String) pageContext.getAttribute("birthday");
        %>

        <h2>姓名:<%=Username%></h2>
        <h2>生日:<%=birthday%></h2>
    </body>
</html>