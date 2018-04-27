<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>取得虚拟目录的绝对路径</title>
    </head>
    <body>
        <%
            //尽量使用this.getServletContext()来代替application对象
            String path = application.getRealPath("/");    //得到当前虚拟目录下对应的真实路径
            //这里的方法表示的是由容器调用，实际上ServeletContext本身就表示整个容器
            String path_2 = this.getServletContext().getRealPath("/");
        %>
        <h3><%=path_2%></h3>
    </body>
</html>