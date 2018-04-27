<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>    <!--使用Enumeration导入此包 -->
<html>
    <head>
        <title>取出头信息以及其他信息的名称及内容</title>
    </head>
    <body>
        <%
            //头部信息
            Enumeration enu = request.getHeaderNames();
            while(enu.hasMoreElements()) {
                String headerName = (String) enu.nextElement();
                String headerValue = (String) request.getHeader(headerName);

        %>
        <h5><%=headerName%>--><%=headerValue%></h5>
        <%
            }
        %>
<%
        //其他信息
        String method = request.getMethod();     //提交方式
        String ip = request.getRemoteAddr();        //取得客户端的IP地址
        String path = request.getServletPath();    //访问路径
        String contextPath = request.getContextPath();    //上下文资源信息
%>
        <h3>请求方式：<%=method%></h3>
        <h3>客户端IP地址：<%=ip%></h3>
        <h3>访问路径：<%=path%></h3>
        <h3>上下文名称：<%=contextPath%></h3>
    </body>
</html>