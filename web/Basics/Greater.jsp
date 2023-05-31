<%-- 
    Document   : Greater
    Created on : Feb 8, 2023, 12:18:15 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greater</title>
    </head>
    <body>
        
         <%  
           int a=0,b=0,c=0,g=0,l=0;
           if (request.getParameter("btngrt") != null) {
                a =Integer.parseInt(request.getParameter("txtnum1"));
                b =Integer.parseInt(request.getParameter("txtnum2"));
                c =Integer.parseInt(request.getParameter("txtnum3"));
                if (a>b){
                    if(a>c)
                        g=a;
                    else
                        g=c;
                }
                else {
                    if(b>c)
                        g=b;
                    else
                        g=c;
                }
                if (a<b){
                    if(a<c)
                        l=a;
                    else
                        l=c;
                }
                else {
                    if(b<c)
                        l=b;
                    else
                        l=c;
           }
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
                <tr>
                    <td>
                        Number-3
                    </td>
                    <td>
                        <input type="text" name="txtnum3" placeholder="Enter a Nmuber" required= value="<%=c%>">
                    </td>
                </tr>
                <td colspan="2" align="center">
                       
                        <input type="submit" name="btngrt" value="Find">
                </td>
                <tr>
                    <td>
                        Greatest=
                    </td>
                    <td>
                        <%=g%>
                    </td>
                </tr>
                <tr>
                    <td>
                        lowest=
                    </td>
                    <td>
                        <%=l%>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
