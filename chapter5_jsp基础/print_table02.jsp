<%@ page language="java" pageEncoding="utf-8"%>
<html>
    <head>
        <title>10*10的表格</title>
    </head>

    <body>
        <table border = "1" width = "100%" >
        
        <%                        //将HTML代码和Java代码分离,绝对不要用out.println()
            int rows = 10;
            int cols = 10;
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