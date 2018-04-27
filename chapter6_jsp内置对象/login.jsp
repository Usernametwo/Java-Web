<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<html>
    <head>
        <title>登录页面</title>
    </head>
    <body>
    <!--自身提交-->
        <form action="login.jsp" method="post">
            用户名:<input type="text" name="name"> <br>
            密  码:<input type="password" name="password"><br>
            <input type="submit" value="提交">
            <input type="reset" value="重置"><br>
        </form>
    </body>

    <%
        //用户名   Usernametwo   密码    myadmin
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        if( !( name==null||"".equals(name)||password==null||password.equals("") )&&( password.equals("myadmin")&&name.equals("Usernametwo") ) ){
            response.setHeader("refresh", "2;URL=welcome.jsp");   //定时跳转
            session.setAttribute("userid", name);  //将登陆的用户名保存在session中
    %>
            <h3>用户成功登录,两秒后跳转页面</h3>
    <%
        } else {
    %>
            <h3>错误的用户名和密码</h3>
    <%
        }
    %>

</html>