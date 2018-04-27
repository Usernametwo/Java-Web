<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<heml>
    <head>
        <title>接收地址重写参数</title>
    </head>
    <body>
        <%
        //通过地址重写接收参数
        //地址格式为：动态页面地址?参数名称1=参数内容&参数名称2=参数内容&....
        //所有的参数与之前的地址用?分隔，多个参数用&分隔
        //例如：http://localhost:8080/project/request_demo03.jsp?name=%E4%B8%AD%E6%96%87&password=%E5%AF%86%E7%A0%81
            request.setCharacterEncoding("utf-8");
            String param1 = request.getParameter("name");
            String param2 = request.getParameter("password");
        %>
        <h3>姓名：<%=param1%></h3>
        <h3>密码：<%=param2%></h3>
    </body>
</heml>