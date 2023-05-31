<%-- 
    Document   : UserMyRequests
    Created on : Mar 15, 2023, 9:48:41 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Fund Request List</title>
    </head>
    <body>
      <%@include  file="Head.jsp" %>
        <table border="1" align="center">
            <tr>
                
                <td>Proof</td>
                <td>Details</td>
                <td>Amount</td>
                <td>Fund Category</td>
                <td>Action</td></tr>
                <%
                    String selQry = "select * from tbn_fundreq f inner join tbn_user u on f.user_id= u.user_id inner join tbn_category fc on f.category_id=fc.category_id  where f.user_id='"+session.getAttribute("uid")+"'";
                    System.out.println(selQry);
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            <tr>
                <td><img src="../Assets/Files/FundProof/<%=rs.getString("fundreq_proof")%>" height="120" width="100"</td>       
    
                
                <td><%=rs.getString("fundreq_details")%></td>
                <td><%=rs.getString("fundreq_amount")%></td>
                <td><%=rs.getString("category_name")%></td>
                <td><% if(rs.getString("fundreq_vstatus").equals("0"))
                {
                    out.print("Request is not verified");
                }else if(rs.getString("fundreq_vstatus").equals("1"))
                {
                    out.print("Request is accepted");
                }
                else{
                     out.print("Request is rejected");
                }
                
                
                
                %></td>
              
            </tr>

            <%

                }
            %>   

        </table>
<%@include  file="Foot.jsp" %>
    </body>
</html>

