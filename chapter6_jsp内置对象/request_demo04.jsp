<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>    <!--使用Enumeration导入此包 -->
<html>
    <head>
        <title>接受多个参数</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
        %>
        <center>
            <table border="1">
                <tr>
                    <td>参数名称</td>
                    <td>参数内容</td>
                </tr>
<%
                Enumeration enu = request.getParameterNames();
                while(enu.hasMoreElements()) {
                    //返回的是object向下转型
                    String paramName = (String) enu.nextElement();
%>              
                <tr>
                    <td>
                        <%=paramName%>
                    </td>
                    <td>
                        <%
                        //此处要判断接受的是数组还只是单纯的字符串
                            if(paramName.startsWith("**")) {
                                String paramValue[] = request.getParameterValues(paramName);
                                for(int x=0;x<paramValue.length;x++) {
%>
                                <%=paramValue[x]%>·
<%
                                }
                            } else {
                                String paramValue = request.getParameter(paramName);
%>
                                <%=paramValue%>
<%
                            }
%>

                    </td>
                </tr>
<%
                }
%>
            <table>
        </center>
    </body>
</html>