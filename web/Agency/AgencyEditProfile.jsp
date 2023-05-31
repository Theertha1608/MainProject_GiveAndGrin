<%-- 
    Document   : AgencyEditProfile
    Created on : Mar 14, 2023, 10:23:08 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agency Edit Profile </title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
            String SelQry = "select * from tbn_agency where agency_id='" + session.getAttribute("agid") + "'";
            ResultSet rs = con.selectCommand(SelQry);
            rs.next();
            if (request.getParameter("btnUpdate") != null) {
                String UpQry = "update tbn_agency set agency_name='" + request.getParameter("txtname") + "', agency_contact='" + request.getParameter("txtcontact") + "',agency_address='" + request.getParameter("txtaddress") + "' where agency_id='"+session.getAttribute("agid")+"'";
                if(con.executeCommand(UpQry)) {
        %>
        <script>
            alert("Updated");
            window.location = "AgencyHomePage.jsp";


        </script>
        <%
                }
                else
                {
                    %>
                    <script>
                        alert("Failed");
                        window.location="AgencyEditProfile.jsp";
                    </script>
                    <%
                }
               

        }


        %>

        <form method="post">
            <table align="center" border="1">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" value="<%=rs.getString("agency_name")%>"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="txtcontact" value="<%=rs.getString("agency_contact")%>"></td>


                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea cols="30" rows="5" name="txtaddress"><%=rs.getString("agency_address")%></textarea>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="Submit" name="btnUpdate" value="Update">
                    </td>
                </tr>





            </table>
        </form>
                <%@include  file="Foot.jsp" %>
    </body>
</html>


