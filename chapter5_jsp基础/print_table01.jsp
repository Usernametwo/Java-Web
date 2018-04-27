<%@ page language="java" pageEncoding="utf-8"%>
<html>
    <head>
        <title>10*10的表格</title>
    </head>

    <body>
        <%                        //HTML和Java代码紧密耦合在一起，调试会很麻烦,最好将HTML代码和Java代码分离
            int rows = 10;
            int cols = 10;
            out.println("<table border=\"1\" width=\"100%\" >" );
            for(int x = 0; x < rows; x++)
            {
                out.println("<tr>");
                for(int y = 0; y < cols; y++)
                {
                    out.println("<td>" + (x*y) + "</td>");
                }
                out.println("</tr>");
            }
            out.println("</table>");
        %>
    </body>
</html>