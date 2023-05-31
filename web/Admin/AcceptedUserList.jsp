<%-- 
    Document   : AcceptedUserList
    Created on : Mar 14, 2023, 12:38:44 PM
    Author     : hp
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accepted User List</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <%
        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_user set user_vstatus=-1 where user_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Rejected");
                    window.location="AcceptedUserList.jsp";
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
                    String selQry = "select * from tbn_user a inner join tbn_place p on a.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where user_vstatus=1";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            <tr>
                <td><img src="../Assets/Files/User/<%=rs.getString("user_photo")%>" height="120" width="100"</td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("user_email")%></td>
                <td><%=rs.getString("user_address")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("district_name")%></td>
                <td>
                    
                    <a href="UserList.jsp?rid=<%=rs.getString("User_id")%>">Reject</a>
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

