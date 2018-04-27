<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.math.*"%>
<html>
    <head><title>记录访问人数量</title></head>
    <body>
        <%!
           BigInteger count = null;        //定义总访问量 
        %>
        <%!
            public BigInteger load(File file) {  //读取计数文件
                BigInteger count = null;
                try {
                    if(file.exists()) {
                        Scanner sc = new Scanner(new FileInputStream(file));
                        if(sc.hasNext()) {
                            count = new BigInteger(sc.next());
                        }
                        sc.close();      //关闭输入流
                    } else {
                        count = new BigInteger("0");   //第一次访问
                        save(file, count); //调用save方法，保存新文件
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return count;    //返回读取后的数据
            }

            public void save(File file, BigInteger count) {
                try {
                    PrintStream ps = new PrintStream(new FileOutputStream(file));
                    ps.println(count);
                    ps.close();
                } catch(Exception e) {
                    e.printStackTrace();
                }
            }
        %>

        <%
            String fileName = this.getServletContext().getRealPath("/") + "count.txt";
            File file = new File(fileName);
            if(session.isNew()) {        
                synchronized(this) {
                    count = load(file);
                    count = count.add(new BigInteger("1"));
                    save(file,count);
                }
            }
        %>
        <h2>您是第<%=count==null?0:count%>位访客</h2>
    </body>
</html>