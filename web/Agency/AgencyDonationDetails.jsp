<%-- 
    Document   : AgencyDonationDetails
    Created on : Mar 16, 2023, 3:14:00 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donation Details</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <table border="1" align="center">
            <tr>
                
                <td>Sl.No</td>
                <td>Donor Name</td>
                <td>Donor Contact</td>
                <td>Donor Email</td>
                <td>Donation Amount</td>
                <td>Date</td>
            </tr>
                        <%
                    String selQry = "select * from tbn_donation d inner join tbn_donor r on d.donor_id= r.donor_id where d.agency_id='"+session.getAttribute("agid")+"'";
                    System.out.println(selQry);
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %> 
            
                <tr>
                <td><%=rs.getString("donation_id")%></td>
                <td><%=rs.getString("donor_name")%></td>
                <td><%=rs.getString("donor_contact")%></td>
                <td><%=rs.getString("donor_email")%></td>
                <td><%=rs.getString("donation_amount")%></td>
                <td><%=rs.getString("donation_date")%></td>
                </tr>
            <%

                }
            %>   

        <%@include  file="Foot.jsp" %>
        
    </body>
</html>
