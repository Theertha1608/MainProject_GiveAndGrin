<%-- 
    Document   : MyProfile
    Created on : Feb 20, 2023, 3:23:15 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile User</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
               String selQry="select * from tbn_user u inner join tbn_place p on u.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where user_id='"+session.getAttribute("uid")+"'";
               System.out.print(selQry);
               ResultSet rs=con.selectCommand(selQry);
               rs.next();
              
                 %>        
        
                 <form method="post">
                     <h2>
                         My Profile
                     </h2>
        <table border="1" align="center">
            <tr><td>photo</td>
            <td><img src="../Assets/Files/User/<%=rs.getString("user_photo")%>" height="120" width="100"></td>
            </tr>
            <tr><td>Name</td>
            <td><%=rs.getString("user_name")%></td>
            </tr>
            <tr><td>Email</td>
            <td><%=rs.getString("user_email")%></td>    
            </tr>
            <tr><td>DOB</td>
            <td><%=rs.getString("user_dob")%></td>
            </tr>
            <tr><td>Contact</td>
            <td><%=rs.getString("user_contact")%></td>
            </tr>
            <tr><td>Gender</td>
            <td><%=rs.getString("user_gender")%></td>
            </tr>
            <tr><td>District</td>
            <td><%=rs.getString("district_name")%></td>
            </tr>
            <tr><td>Place</td>
            <td><%=rs.getString("place_name")%></td>
            </tr>
            <tr><td>Address</td>
            <td><%=rs.getString("user_address")%></td>
            </tr>
                    </table>
        </form>
            <%@include  file="Foot.jsp" %>
    </body>
</html>
