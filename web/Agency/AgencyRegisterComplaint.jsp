<%-- 
    Document   : AgencyRegisterComplaint
    Created on : Mar 22, 2023, 10:55:48 AM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Complaint</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
     
            if(request.getParameter("btnsave")!=null)
            {
                String complaint= request.getParameter("txtdescription");
                String inQry="insert into tbn_complaint(complaint_date,complaint_description,agency_id) values(curdate(),'"+complaint+"','"+session.getAttribute("agid")+"')";
                if (con.executeCommand(inQry)){
            
                   %>
                   <script>
                       alert('Inserted');
                       out.println(inQry);
                       window.location="AgencyHompepage.jsp";
                    </script>
                    <%
                }
                else {
                   %>
                   <script>
                       alert('Failed');
                       out.println(inQry);
                   </script>
                   
                   <%
                }
            }
            %>
            
                    
                       
        <form>
            <table border="1" align="center">
       <tr>
                    <td>Description:</td>
                    <td><textarea type="text" name="txtdescription" required=""></textarea></td>
       </tr> 
       <tr>
                    <td colspan="2"align="center">
                        <input type="submit" name="btnsave" value="Save">
                        <input type="submit" name="btnreset" value="Cancel">
                    </td>
                    </td>
       </tr>
            </table>
        
        </form>
            <%@include  file="Foot.jsp" %>
    </body>
</html>
