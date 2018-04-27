<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>取得输出的缓冲区大小</title>
    </head>
    <body>
        <%
        //out对象,主要完成页面的输出操作，但是一般使用表达式完成输出的操作
        //JSP中缓冲区信息
        int buffer = out.getBufferSize();     //缓冲区大小
        int available = out.getRemaining();   //得到未使用的缓冲区大小
        int use = buffer - available ;
        %>
        <h3>缓冲区大小:<%=buffer%></h3>
        <h3>可用的缓冲区大小:<%=available%></h3>
        <h3>使用中的缓冲区大小:<%=use%></h3>
    </body>
</html>