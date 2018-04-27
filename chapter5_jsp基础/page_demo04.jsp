<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<%@ page errorPage="error.jsp"%>      <!--一旦出现错误会跳转到error.jsp，服务器端的跳转-->
<%
    int result = 10 / 0;       //这里将发生异常
%>