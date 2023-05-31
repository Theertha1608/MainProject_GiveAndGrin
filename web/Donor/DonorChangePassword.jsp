<%-- 
    Document   : DonorChangePassword
    Created on : Mar 14, 2023, 4:02:59 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
            if (request.getParameter("btnSubmit") != null) {
                String dbPassword = "";
                String selQry = "select * from tbn_donor where donor_id='" + session.getAttribute("drid") + "'";
                ResultSet rs = con.selectCommand(selQry);
                if (rs.next()) {
                    dbPassword = rs.getString("donor_password");
                }

                String curPassword = request.getParameter("txtcurrentpass");
                String newPassword = request.getParameter("txtnewpass");
                String rePassword = request.getParameter("txtconfirmpass");

                if (dbPassword.equals(curPassword)) {
                    if (newPassword.equals(rePassword)) {
                        String UpQry = "update tbn_donor set donor_password='" + newPassword+ "' where donor_id='" + session.getAttribute("drid") + "'";
                        if (con.executeCommand(UpQry)) {

                            %>
                            <script>
                                alert("Password changed successfully");
                                window.location = "DonorHomepage.jsp";
                            </script>
                            <%                
                        } else {
                            %>
                            <script>
                                alert("failed");
                                window.location = "DonorChangePassword.jsp";
                            </script>
                            <%
                         }
                    } else {
                    %>
                    <script>
                        alert("New Password Mismatched");
                        window.location = "DonorChangePassword.jsp";
                    </script>
                    <%
                }
            } else {
                %>
                <script>
                    alert("Current Password Mismatched");
                    window.location = "DonorChangePassword.jsp";
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
        <%@include  file="Foot.jsp" %>
    </body>
</html>


