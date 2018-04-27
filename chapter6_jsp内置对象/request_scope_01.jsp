<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <title>request的属性范围</title>
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
            //设置request属性，此属性在服务器跳转有效
            request.setAttribute("name", "Usernametwo");
            request.setAttribute("birthday",reportDate);
        %>
    <jsp:forward page="request_scope_02.jsp"/>
    </body>
</html>