<%-- 
    Document   : DonationDetails
    Created on : Mar 16, 2023, 1:58:44 PM
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
                
                <td>Sl.No</td>
                <td>Agency Name</td>
                <td>Donation Amount</td>
                <td>Date</td>
            </tr>
            <tr>
                <%
                    String selQry = "select * from tbn_donation d inner join tbn_agency a on d.agency_id= a.agency_id where d.donor_id='"+session.getAttribute("drid")+"'";
                    System.out.println(selQry);
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            
                
                <td><%=rs.getString("donation_id")%></td>
                <td><%=rs.getString("agency_name")%></td>
                <td><%=rs.getString("donation_amount")%></td>
                <td><%=rs.getString("donation_date")%></td>
        </tr>
            <%

                }
            %>   

        </table>
<%@include  file="Foot.jsp" %>
    </body>
</html>

