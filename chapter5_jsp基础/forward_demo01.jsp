<%@ page contentType="text/html;charset=GBK" pageEncoding="utf-8"%>
<%
    String username="hello";
%>
<jsp:forward page="forward_demo02.jsp">                        //跳转页面指令，和之前的error页跳转一样属于服务器跳转，即地址栏的地址不改变
    <jsp:param name="name" value="<%=username%>" />
    <jsp:param name="info" value="world" />
</jsp:forward>