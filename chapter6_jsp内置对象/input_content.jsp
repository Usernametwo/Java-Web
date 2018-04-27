<%@ page contentType="text/html;cahrset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<html>
    <head>
        <title>接受内容并保存为文件</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("utf-8");
            String name = request.getParameter("filename");
            String content = request.getParameter("filecontent");
            String fileName = this.getServletContext().getRealPath("/") + "node" + File.separator +name;
            File file = new File(fileName);           //实例化File类对象
            if(!file.getParentFile().exists()) {      //判断父文件夹是否存在
                file.getParentFile().mkdir();
            }
            PrintStream ps = null;
            ps = new PrintStream(new FileOutputStream(file));
            ps.println(content);
            ps.close();
        %>

        <%  //读取出来
            Scanner scan = new Scanner(new FileInputStream(file));
            scan.useDelimiter("\n");          //设置读取分隔符
            StringBuffer buf = new StringBuffer();
            while(scan.hasNext()) {
                buf.append(scan.next()).append("<br>");
            }
            scan.close();
        %>
        
        <%=buf%>
    </body>
</html>