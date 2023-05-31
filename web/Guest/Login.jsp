<%-- 
    Document   : Login
    Created on : Feb 20, 2023, 10:25:37 AM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body{
                background-image: url("two.jpeg");
                background-size:  450px 900px;
            }
        </style>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
            if(request.getParameter("btnsubmit")!=null)
            {
                String username=request.getParameter("txtusername");
                String password=request.getParameter("txtpassword");
                
                String selQryus="select * from tbn_user where user_email='"+username+"' and user_password='"+password+"' and user_vstatus=1";
                ResultSet rsus=con.selectCommand(selQryus);
                if(rsus.next())
                {
                    session.setAttribute("uid",rsus.getString("user_id"));
                    session.setAttribute("uname",rsus.getString("user_name"));
                    response.sendRedirect("../User/HomePage.jsp");
                }
                String selQryad="select * from tbn_admin where admin_email='"+username+"' and admin_password='"+password+"'";
                ResultSet rsad=con.selectCommand(selQryad);
                 if(rsad.next())
                {
                    session.setAttribute("adid",rsad.getString("admin_id"));
                    session.setAttribute("adname",rsad.getString("admin_name"));
                    response.sendRedirect("../Admin/HomePage.jsp");
                }
                String selQrydr="select * from tbn_donor where donor_email='"+username+"' and donor_password='"+password+"' and donor_vstatus=1";
                ResultSet rsdr=con.selectCommand(selQrydr);
                 if(rsdr.next())
                {
                    session.setAttribute("drid",rsdr.getString("donor_id"));
                    session.setAttribute("dname",rsdr.getString("donor_name"));
                    response.sendRedirect("../Donor/DonorHomePage.jsp");
                }
                String selQryag="select * from tbn_agency where agency_email='"+username+"' and agency_password='"+password+"' and agency_vstatus=1";
                ResultSet rsag=con.selectCommand(selQryag);
                 if(rsag.next())
                {
                    session.setAttribute("agid",rsag.getString("agency_id"));
                    session.setAttribute("aname",rsag.getString("agency_name"));
                    response.sendRedirect("../Agency/AgencyHomePage.jsp");
                }
                
                } 
      
            %>
        <form> 
            <table align="center" border="1">
    
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="txtusername" placeholder="Enter Username" required=""></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpassword" placeholder="Enter Password" required=""></td>
                </tr>
                 <tr>
                    <td colspan="2"align="center">
                        <input type="submit" name="btnsubmit" value="Login">
                    </td>
                </tr>
            
    </tr>
            </table>
            
        </form>
        <%@include  file="Foot.jsp" %>
    </body>
</html>
