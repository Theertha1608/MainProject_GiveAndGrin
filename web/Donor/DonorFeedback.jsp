<%-- 
    Document   : DonorFeedback
    Created on : Mar 22, 2023, 3:20:42 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Feedback</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
     
            if(request.getParameter("btnsave")!=null)
            {
                String feedback= request.getParameter("txtfeedback");
                String inQry="insert into tbn_feedback(donor_id,feedback_description,feedback_date) values('"+session.getAttribute("uid")+"','"+feedback+"',curdate())";
                if (con.executeCommand(inQry)){
            
                   %>
                   <script>
                       alert('Inserted');
                       out.println(inQry);
                       window.location="Hompepage.jsp";
                    </script>
                    <%
                }
                else {
                   %>
                   <script>
                       alert('Failed');
                       out.println(inQry);
                       window.location="Hompepage.jsp";
                   </script>
                   
                   <%
                }
            }
            %>
            
                    
                       
        <form>
            <table border="1" align="center">
       <tr>
                    <td>Feedback:</td>
                    <td><textarea type="text" name="txtfeedback" required=""></textarea></td>
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

