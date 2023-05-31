<%-- 
    Document   : TrackComplaint
    Created on : Mar 21, 2023, 10:29:52 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Track My Complaint</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <form method="post">
            <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>Description</td>
                        <td>Date</td>
                        <td>Reply</td>
                        <td>Action</td>
                 </tr>
                 <% 
                     int i =0;
                     String selQry="select * from tbn_complaint where user_id='"+session.getAttribute("uid")+"'";
                     ResultSet rs=con.selectCommand(selQry);
                     while (rs.next()) {
                     i++;
                     if(request.getParameter("did")!=null){
                         String delQry="delete from tbn_complaint where complaint_id='"+request.getParameter("did")+"'";
                         con.executeCommand(delQry);
                     }
                         
                %> 
                   <td><%=i%></td>
                   <td><%=rs.getString("complaint_description")%></td>
                   <td><%=rs.getString("complaint_date")%></td>
                   <td><%=rs.getString("complaint_reply")%></td>
                   <td>
                        <a href="TrackComplaint.jsp?did=<%=rs.getString("complaint_id")%>" >Delete</a></td>
                </tr>
                <%
                    }
                %>
                
            </table>     
        </form>   
                <%@include  file="Foot.jsp" %>
    </body>
</html>
