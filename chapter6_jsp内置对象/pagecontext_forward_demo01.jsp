<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>利用pageContext对象完成页面跳转</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            //pageContext是javax.servlet.jsp.PageContext类的实例，主要表示一个JSP页面的上下文
            //之前的request,response,config,application,<jsp:include>,<jsp:forward>等操作实际上都可以在pageContext对象中完成
            pageContext.forward("pagecontext_forward_demo02.jsp?info=信息");
        %>
        
    </body>
</html>