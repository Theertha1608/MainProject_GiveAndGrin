<%-- 
    Document   : DonorMyProfile
    Created on : Mar 14, 2023, 3:51:21 PM
    Author     : hp
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile Donor</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
               String selQry="select * from tbn_donor u inner join tbn_place p on u.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where donor_id='"+session.getAttribute("drid")+"'";
               System.out.print(selQry);
               ResultSet rs=con.selectCommand(selQry);
               rs.next();
              
                 %>        
        
                 <form method="post">
        <table border="1" align="center">
            <tr><td>photo</td>
            <td><img src="../Assets/Files/Donor/<%=rs.getString("donor_photo")%>" height="120" width="100"></td>
            </tr>
            <tr><td>Name</td>
            <td><%=rs.getString("donor_name")%></td>
            </tr>
            <tr><td>Email</td>
            <td><%=rs.getString("donor_email")%></td>    
            </tr>
            
            <tr><td>Contact</td>
            <td><%=rs.getString("donor_contact")%></td>
            </tr>
            <tr><td>District</td>
            <td><%=rs.getString("district_name")%></td>
            </tr>
            <tr><td>Place</td>
            <td><%=rs.getString("place_name")%></td>
            </tr>
            <tr><td>Address</td>
            <td><%=rs.getString("donor_address")%></td>
            </tr>
            
            
            
            
        </table>
        </form>
            <%@include  file="Foot.jsp" %>
    </body>
</html>
