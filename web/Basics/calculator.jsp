<%-- 
    Document   : calculator
    Created on : Feb 8, 2023, 11:38:58 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>calculator</title>
    </head>
    <body>
       <%  
           int a=0,b=0,c=0;
           if (request.getParameter("btnadd") != null) {
                a =Integer.parseInt(request.getParameter("txtnum1"));
                b =Integer.parseInt(request.getParameter("txtnum2"));
                c =a + b ;
           }
           if (request.getParameter("btnsub") != null) {
                a =Integer.parseInt(request.getParameter("txtnum1"));
                b =Integer.parseInt(request.getParameter("txtnum2"));
                c =a - b ;
           }
        %>
        <form method="post">
            <table>
                <tr>
                    <td>
                        Number-1
                    </td>
                    <td>
                        <input type="text" name="txtnum1" placeholder="Enter a Nmuber" required= value="<%=a%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        Number-2
                    </td>
                    <td>
                        <input type="text" name="txtnum2" placeholder="Enter a Nmuber" required= value="<%=b%>">
                    </td>
                </tr>
                    <td colspan="2" align="center">
                       
                        <input type="submit" name="btnadd" value="+">
                        <input type="submit" name="btnsub" value="-">
                    </td>
                </tr>
                <tr>
                    <td>
                        result
                    </td>
                    <td>
                        <%=c%>
                    </td>
                </tr>
            </table>
        </form>
      
    </body>
</html>
