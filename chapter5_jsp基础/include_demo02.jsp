<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>
            动态包含指令包含静态文件
        </title>
    </head>
    <body>
        <h1>
            动态包含操作
        </h1>
        <jsp:include page="info.jsp"/>              //动态包含指令如果被包含的是动态页面会先处理后包含，不会造成不同包含文件的相同变量名冲突问题     
        <jsp:include page="info.htm"/>
        <jsp:include page="info.inc"/>
    </body>
</html>