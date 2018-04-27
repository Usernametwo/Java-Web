<%@ page contentType="text/html;charset=GBK" pageEncoding="utf-8"%>
<html>
    <head>
        <title>静态包含指令</title>
    </head>
    <body>
        <h1>静态包含操作</h1> 
        <%@ include file="info.htm"%>          //该指令会先包含后处理，使用静态包含命令可能会出现包含页面的变量名冲突，尽量使用动态包含命令
        <%@ include file="info.jsp"%>
        <%@ include file="info.inc"%>
    </body>
</html>