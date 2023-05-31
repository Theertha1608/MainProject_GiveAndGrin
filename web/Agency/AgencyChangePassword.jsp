<%-- 
    Document   : AgencyChangePassword
    Created on : Mar 14, 2023, 10:28:33 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AgencyChange Password</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
            if (request.getParameter("btnSubmit") != null) {
                String dbPassword = "";
                String selQry = "select * from tbn_agency where agency_id='" + session.getAttribute("agid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if (rs.next()) {
                    dbPassword = rs.getString("agency_password");
                }

                String curPassword = request.getParameter("txtcurrentpass");
                String newPassword = request.getParameter("txtnewpass");
                String rePassword = request.getParameter("txtconfirmpass");

                if (dbPassword.equals(curPassword)) {
                    if (newPassword.equals(rePassword)) {
                        String UpQry = "update tbn_agency set agency_password='" + newPassword+ "' where agency_id='" + session.getAttribute("agid") + "'";
                        if (con.executeCommand(UpQry)) {

                            %>
                            <script>
                                alert("Password changed successfully");
                                window.location = "AgencyHomePage.jsp";
                            </script>
                            <%                
                        } else {
                            %>
                            <script>
                                alert("failed");
                                window.location = "AgencyChangePassword.jsp";
                            </script>
                            <%
                         }
                    } else {
                    %>
                    <script>
                        alert("New Password Mismatched");
                        window.location = "AgencyChangePassword.jsp";
                    </script>
                    <%
                }
            } else {
                %>
                <script>
                    alert("Current Password Mismatched");
                    window.location = "AgencyChangePassword.jsp";
                </script>
                <%
                }
            }


        %>

        <table border="1" align="center">
            <form method="post">
                <tr>
                    <td>Current Password</td>
                    <td><input type="password" name="txtcurrentpass" placeholder="Enter current password" required=""></td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td><input type="password" name="txtnewpass" placeholder="Enter new password"required=""></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="txtconfirmpass" placeholder="Enter confirm password"required=""></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="Submit" name="btnSubmit" value="Submit">
                        <input type="Submit" name="btnReset" value="Reset">
                    </td>
            </form>
        </table>
    </body>
    <%@include  file="Foot.jsp" %>
</html>



