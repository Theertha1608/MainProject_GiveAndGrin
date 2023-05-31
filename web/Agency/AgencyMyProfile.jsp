<%-- 
    Document   : AgencyMyProfile
    Created on : Mar 14, 2023, 9:38:14 PM
    Author     : hp
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile Agency</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
               String selQry="select * from tbn_agency u inner join tbn_place p on u.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where agency_id='"+session.getAttribute("agid")+"'";
               System.out.print(selQry);
               ResultSet rs=con.selectCommand(selQry);
               rs.next();
              
                 %>        
        
                 <form method="post">
        <table border="1" align="center">
            <tr><td>Logo</td>
            <td><img src="../Assets/Files/Agency/logo/<%=rs.getString("agency_logo")%>" height="120" width="100"></td>
            </tr>
            <tr><td>Proof</td>
            <td><img src="../Assets/Files/Agency/proof/<%=rs.getString("agency_proof")%>" height="120" width="100"></td>
            </tr>
            <tr><td>Name</td>
            <td><%=rs.getString("agency_name")%></td>
            </tr>
            <tr><td>Email</td>
            <td><%=rs.getString("agency_email")%></td>    
            </tr>
            
            <tr><td>Contact</td>
            <td><%=rs.getString("agency_contact")%></td>
            </tr>
            <tr><td>District</td>
            <td><%=rs.getString("district_name")%></td>
            </tr>
            <tr><td>Place</td>
            <td><%=rs.getString("place_name")%></td>
            </tr>
            <tr><td>Address</td>
            <td><%=rs.getString("agency_address")%></td>
            </tr>
            
            
            
            
        </table>
        </form>
            <%@include  file="Foot.jsp" %>
    </body>
</html>


