<%-- 
    Document   : ViewComplaint
    Created on : Mar 21, 2023, 10:15:12 PM
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
        <%@include file="Head.jsp" %>
        <h3>Users Complaints</h3>
        <div id="tab" align="center">
        <form method="post">
            <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>User Name</td>
                        <td>Description</td>
                        <td>Date</td>
                        <td>Action</td>
                 </tr>
                 <% 
                     int i =0;
                     String selQry="select * from tbn_complaint c inner join tbn_user u on c.user_id=u.user_id where complaint_status=0 ";
                     ResultSet rs=con.selectCommand(selQry);
                     while (rs.next()) {
                     i++;
                %> 
                   <td><%=i%></td>
                   <td><%=rs.getString("user_name")%></td>
                   <td><%=rs.getString("complaint_description")%></td>
                   <td><%=rs.getString("complaint_date")%></td>
                   <td>
                        <a href="ReplyComplaint.jsp?uid=<%=rs.getString("complaint_id")%>" >Replay</a></td>
                </tr>
                <%
                    }
                %>
                
            </table> <br> <br> 
            <h3>Agencies Complaints</h3>
                <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>Agency Name</td>
                        <td>Description</td>
                        <td>Date</td>
                        <td>Action</td>
                 </tr>
                 <% 
                     int j =0;
                     String selQry1="select * from tbn_complaint c inner join tbn_agency a on c.agency_id=a.agency_id where complaint_status=0 ";
                     ResultSet rs1=con.selectCommand(selQry1);
                     while (rs1.next()) {
                     j++;
                %> 
                 <td><%=j%></td>
                   <td><%=rs1.getString("agency_name")%></td>
                   <td><%=rs1.getString("complaint_description")%></td>
                   <td><%=rs1.getString("complaint_date")%></td>
                   <td>
                        <a href="ReplyComplaint.jsp?uid=<%=rs1.getString("complaint_id")%>" >Reply</a></td>
                </tr>
                <%
                    }
                %>
                
            </table> 
                <br> <br> 
                <h3>Donors Complaints</h3>
                <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>Donor Name</td>
                        <td>Description</td>
                        <td>Date</td>
                        <td>Action</td>
                 </tr>
                 <% 
                     int k =0;
                     String selQry2="select * from tbn_complaint c inner join tbn_donor a on c.donor_id=a.donor_id";
                     ResultSet rs2=con.selectCommand(selQry2);
                     while (rs2.next()) {
                     k++;
                %> 
                 <td><%=k%></td>
                   <td><%=rs2.getString("donor_name")%></td>
                   <td><%=rs2.getString("complaint_description")%></td>
                   <td><%=rs2.getString("complaint_date")%></td>
                   <td>
                        <a href="ReplyComplaint.jsp?uid=<%=rs2.getString("complaint_id")%>" >Reply</a></td>
                </tr>
                <%
                    }
                %>
                
            </table> 
        </form> 
    </div>
        <%@include file="Foot.jsp" %>
    </body>
</html>

