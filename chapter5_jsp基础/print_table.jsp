<%@ page language="java" pageEncoding="utf-8"%>
<html>
    <head>
        <title>处理表格的显示</title>
    </head>
    <body>
        <table border = "1" width = "100%" >
        
        <%                    
            int rows = 0;
            int cols = 0;
            try {
                rows = Integer.parseInt(request.getParameter("row"));
                cols = Integer.parseInt(request.getParameter("col"));
            }catch(Exception e) {
                e.printStackTrace();
            }
            for(int x = 0; x < rows; x++)
            {                     
        %>
        <tr>
        <%
            for(int y = 0; y < cols; y++)
            {
        %>
        <td> <%=(x * y)%> </td>
        <%
            }                       //for循环的反括号一定要打
        %>
        </tr>
        <%
            }
        %>
        </table>
    </body>
</html>