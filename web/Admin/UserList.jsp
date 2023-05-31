<%-- 
    Document   : UserList
    Created on : Feb 20, 2023, 1:56:31 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <%
        if(request.getParameter("aid")!=null)
        {
        String upQry="update tbn_user set user_vstatus=1 where user_id='"+request.getParameter("aid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Accepted");
                    window.location="UserList.jsp";
                                </script>
        <%
            }
        }
        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_user set user_vstatus=-1 where user_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                 <script>
                    alert("Rejected");
                    window.location="UserList.jsp";
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
            <td>DOB</td>
            <td>Contact</td>
            <td>Gender</td>
            <td>District</td>
            <td>Place</td>
            <td>Address</td>
            <td>Action</td></tr>
            <%
               String selQry="select * from tbn_user u inner join tbn_place p on u.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where user_vstatus=0";
               ResultSet rs=con.selectCommand(selQry);
               while(rs.next())
               {
                 %>  
               
            <tr>
                <td><img src="../Assets/Files/User/<%=rs.getString("user_photo")%>" height="120" width="100"</td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("user_email")%></td>
                <td><%=rs.getString("user_dob")%></td>
                <td><%=rs.getString("user_contact")%></td>
                <td><%=rs.getString("user_gender")%></td>
                <td><%=rs.getString("district_name")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("user_address")%></td>
                <td>
                    <a href="UserList.jsp?aid=<%=rs.getString("User_id")%>">Accept</a>
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
