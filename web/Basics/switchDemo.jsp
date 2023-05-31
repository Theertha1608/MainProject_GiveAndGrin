<%-- 
    Document   : switchDemo
    Created on : Feb 8, 2023, 1:01:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>switchDemo</title>
    </head>
    <body>
        <%int a=0,b=0,c=0,r=0;
           if (request.getParameter("btnfind") != null) {
                a =Integer.parseInt(request.getParameter("txtnum1"));
                b =Integer.parseInt(request.getParameter("txtnum2"));
                c =Integer.parseInt(request.getParameter("choice"));
                switch(c){
                    case 1:r=a+b;
                        break;
                    case 2:r=a-b;
                        break;
                    case 3:r=a*b;
                        break;
                    case 4:r=a/b;
                        break;
                        
                    
                }
           }
        %>
        
        <form method="post">
            <table>
                <tr>
                    <td>Number-1</td>
                    <td>
                        <input type="text" name="txtnum1" placeholder="Enter a Nmuber" required= value="<%=a%>">
                    </td>
                </tr>
                <tr>
                    <td>Number-2</td>
                    <td>
                        <input type="text" name="txtnum2" placeholder="Enter a Nmuber" required= value="<%=b%>">
                    </td>
                </tr>
                <tr>
                    <td>Choice</td>
                    <td><select name="choice">
                            <option name="Select">Select</option>
                            <option value="1">+</option>
                            <option value="2">-</option>
                            <option value="3">*</option>
                            <option value="4">/</option>
                        </select></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="btnfind" value="Find">
                    </td>
                </tr>
                <tr>
                    <td>result</td>
                    <td><%=r%></td>
                    
                </tr>
            </table>
        </form>
        
    </body>
</html>
