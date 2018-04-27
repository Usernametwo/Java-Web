<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<heml>
    <head>
        <title>接受多个参数</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            //接受复选框提交的参数
            String inst[] = request.getParameterValues("inst");
        %>
        <h3>
            编号:<%=id%>
        </h3>
        <h3>
            姓名:<%=name%>
        </h3>
        <%
            if(inst != null) {
        %>
        <h3>兴趣：
        <%
            for(int x=0;x<inst.length;x++) {
        %>
        <%=inst[x]%>·
        <% } %>
        </h3>
        <% } %>
    </body>
</heml>