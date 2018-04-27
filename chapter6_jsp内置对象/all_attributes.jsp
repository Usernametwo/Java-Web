<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<html>
    <head>
        <title>得到全部的属性</title>
    </head>
    <body>
        <%
            Enumeration enu = this.getServletContext().getAttributeNames();
            while(enu.hasMoreElements()) {
                String name = (String) enu.nextElement();
        %>
        <h4><%=name%>-----><%=this.getServletContext().getAttribute(name)%></h4>
        <%
            }
        %>        
    </body>
</html>