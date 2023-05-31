<%-- 
    Document   : LoopDemo
    Created on : Feb 8, 2023, 3:23:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LoopDemo</title>
    </head>
    <body>
        <%
            int a=0,sum=0,avg=0,i;
           if (request.getParameter("btnfind") != null) {
                a =Integer.parseInt(request.getParameter("txtnum1"));
                for(i=0;i<=a;i++){
                    sum=sum+i;
                    avg=sum/a;
                }
               
           }
           
        %>
            
        <form method="post">
            <table>
                <tr>
                    <td>Enter a Number</td>
                    <td>
                        <input type="text" name="txtnum1" placeholder="Enter Nmuber" required= value="<%=a%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btnfind" value="Find">
                    </td>
                </tr>
                <tr>
                    <td>Sum</td>
                    <td><%=sum%></td>
                    
                </tr>
                <tr>
                    <td>Average</td>
                    <td><%=avg%></td>
                    
                </tr>
    </body>
</html>
