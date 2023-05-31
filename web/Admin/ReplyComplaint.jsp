<%-- 
    Document   : ReplyComplaint
    Created on : Mar 21, 2023, 10:24:46 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reply Complaint</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <%
               if (request.getParameter("btnsave")!=null) {
                
               
                String upQry="update tbn_complaint set compalint_status=0, complaint_reply='"+request.getParameter("txtreply")+"' where complaint_id='"+request.getParameter("uid")+"'";
                if(con.executeCommand(upQry))
                {
                    response.sendRedirect("UserViewComplaint.jsp");
                }
               }
                //out.print(upQry);
                
        %>
      
        <form method="POST">
            <table border="1" align="center">
       <tr>
                    <td>Reply:</td>
                    <td><textarea type="text" name="txtreply" required=""></textarea></td>
       </tr> 
       <tr>
                    <td colspan="2"align="center">
                        <input type="submit" name="btnsave" value="Submit">
                        
                    </td>
       </tr>
            </table>
        
        </form>
        </div>
        <%@include file="Foot.jsp" %>
    </body>
    
</html>
