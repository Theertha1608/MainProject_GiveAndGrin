<%-- 
    Document   : View
    Created on : Mar 22, 2023, 3:26:16 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Feedbacks </title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <form method="post">
            <h3>Users feedbacks</h3>
            <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>User Name</td>
                        <td>Feedback</td>
                        <td>Date</td>
                 </tr>
                 <% 
                     int i =0;
                     String selQry="select * from tbn_feedback c inner join tbn_user u on c.user_id=u.user_id";
                     ResultSet rs=con.selectCommand(selQry);
                     while (rs.next()) {
                     i++;
                %> 
                   <td><%=i%></td>
                   <td><%=rs.getString("user_name")%></td>
                   <td><%=rs.getString("feedback_description")%></td>
                   <td><%=rs.getString("feedback_date")%></td>
                </tr>
                <%
                    }
                %>
                
            </table> <br> <br> 
             <h3>Agencies feedbacks</h3>
                <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>Agency Name</td>
                        <td>Feedback</td>
                        <td>Date</td>
                 </tr>
                 <% 
                     int j =0;
                     String selQry1="select * from tbn_feedback c inner join tbn_agency a on c.agency_id=a.agency_id";
                     ResultSet rs1=con.selectCommand(selQry1);
                     while (rs1.next()) {
                     j++;
                %> 
                 <td><%=j%></td>
                   <td><%=rs1.getString("agency_name")%></td>
                   <td><%=rs1.getString("feedback_description")%></td>
                   <td><%=rs1.getString("feedback_date")%></td>
                  
                </tr>
                <%
                    }
                %>
                
            </table> 
                <br> <br> 
                 <h3>Donors feedbacks</h3>
                <table border="1" align="center">
                 <tr>
                        <td>Sl.No</td>
                        <td>Donor Name</td>
                        <td>Feedback</td>
                        <td>Date</td>
                 </tr>
                 <% 
                     int k =0;
                     String selQry2="select * from tbn_feedback c inner join tbn_donor a on c.donor_id=a.donor_id";
                     ResultSet rs2=con.selectCommand(selQry2);
                     while (rs2.next()) {
                     k++;
                %> 
                 <td><%=k%></td>
                   <td><%=rs2.getString("donor_name")%></td>
                   <td><%=rs2.getString("feedback_description")%></td>
                   <td><%=rs2.getString("feedback_date")%></td>
                   
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

