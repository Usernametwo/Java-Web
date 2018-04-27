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
            //pageContext类中的方法：public void setAttribute(String name,Object value,int scope)
            //该方法其实可以设置scope   int scope 可以取四种值分别为 PAGE_SCOPE(默认)，REQUEST_SCOPE，SESSION_SCOPE，APPLICATION_SCOPE
            //其他操作只是对该功能的一次封装
            pageContext.setAttribute("name", "Usernametwo",PageContext.SESSION_SCOPE);
            pageContext.setAttribute("birthday",reportDate,PageContext.SESSION_SCOPE);
        %>
    <%-- 因为直接设置到了session范围，所以需要用session get --%>
    <h1><%=(String)session.getAttribute("name")%></h1>
    <a href="session_scope_02.jsp">通过pageContext.setAttribute()设置session范围</a>
    </body>
</html>