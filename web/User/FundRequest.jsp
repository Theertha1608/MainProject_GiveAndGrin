<%-- 
    Document   : FundRequest
    Created on : Mar 15, 2023, 11:02:46 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fund Request</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/FundRequestAction.jsp">
            <table border="1" align="center">
                <tr>
                    <td>Details</td>
                    <td><textarea type="text" name="txtaddress" placeholder="Enter Bank Ac No." required=""></textarea></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><input type="text" name="contact" placeholder="Enter contact number" required=""></td>
                </tr>
                <tr>
                    <td>Fund Category </td>
                    <td>
                        <select name="slctcategoryname">
                                <option value="">-----Select-----</option>
                                <%
                                String SelQry="select * from tbn_category";
                                ResultSet rsc= con.selectCommand(SelQry);
                                    while(rsc.next())
                                    {                         
                                %>
                                <option value="<%=rsc.getString("category_id")%>"><%=rsc.getString("category_name")%></option>
                                <%
                                    }
                                    %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td><input type="file" name="filephoto" required=""></td>
                </tr>
                   
               
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnsubmit" value="Submit">
                    </td>
                </tr>
               
            </table>
        </form>  
                       <%@include  file="Foot.jsp" %>
    </body>
</html>

                 