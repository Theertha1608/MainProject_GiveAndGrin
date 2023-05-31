<%-- 
    Document   : EditProfileDonor
    Created on : Mar 14, 2023, 2:29:04 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Edit Profile </title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
            String SelQry = "select * from tbn_donor where donor_id='" + session.getAttribute("drid") + "'";
            ResultSet rs = con.selectCommand(SelQry);
            rs.next();
            if (request.getParameter("btnUpdate") != null) {
                String UpQry = "update tbn_donor set donor_name='" + request.getParameter("txtname") + "', user_contact='" + request.getParameter("txtcontact") + "',user_address='" + request.getParameter("txtaddress") + "' where user_id='"+session.getAttribute("drid")+"'";
                if(con.executeCommand(UpQry)) {
        %>
        <script>
            alert("Updated");
            window.location = "HomePage.jsp";


        </script>
        <%
                }
                else
                {
                    %>
                    <script>
                        alert("Failed");
                        window.location="DonorEditProfile.jsp";
                    </script>
                    <%
                }
               

        }


        %>

        <form method="post">
            <table align="center" border="1">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" value="<%=rs.getString("donor_name")%>"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="txtcontact" value="<%=rs.getString("donor_contact")%>"></td>


                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea cols="30" rows="5" name="txtaddress"><%=rs.getString("donor_address")%></textarea>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="Submit" name="btnUpdate" value="Update">
                    </td>
                </tr>





            </table>
        </form>
    </body>
    <%@include  file="Foot.jsp" %>
</html>

