<%@ page language="java" contentType="application/msword" pageEncoding="utf-8"%>
<table border="1">
    <%
        //指定文件下载后的名称
        response.setHeader("Content-Disposition","attachment; filename=hello.doc");
    %>
    <tr>
        <td>
            下载文件
        </td>
    </tr>
</table>