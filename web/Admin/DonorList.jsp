<%-- 
    Document   : DonorList
    Created on : Mar 14, 2023, 11:48:27 AM
    Author     : hp
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor List</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <%
        if(request.getParameter("aid")!=null)
        {
        String upQry="update tbn_donor set donor_vstatus=1 where donor_id='"+request.getParameter("aid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Accepted");
                    window.location="DonorList.jsp";
                                </script>
        <%
            }
        }
        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_donor set donor_vstatus=-1 where donor_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Rejected");
                    window.location="DonorList.jsp";
                                </script>
        <%
            }
        }
        
        %>
        <table border="1" align="center">
            <tr>
                
                <td>Photo</td>
                <td>Name</td>
                <td>Email</td>
                <td>Address</td>
                <td>Place</td>
                <td>District</td>
                <td>Action</td></tr>
                <%
                    String selQry = "select * from tbn_donor a inner join tbn_place p on a.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where donor_vstatus=0";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            <tr>
                <td><img src="../Assets/Files/Donor/<%=rs.getString("donor_photo")%>" height="120" width="100"</td>       
                <td><%=rs.getString("donor_name")%></td>
                <td><%=rs.getString("donor_email")%></td>
                <td><%=rs.getString("donor_address")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("district_name")%></td>
                <td>
                    <a href="DonorList.jsp?aid=<%=rs.getString("Donor_id")%>">Accept</a>
                    <a href="DonorList.jsp?rid=<%=rs.getString("Donor_id")%>">Reject</a>
                </td>
            </tr>

            <%

                }
            %>   

        </table>
    </div>
            <%@include file="Foot.jsp" %>

    </body>
</html>

