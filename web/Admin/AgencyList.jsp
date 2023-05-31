<%-- 
    Document   : AgencyList
    Created on : Feb 21, 2023, 1:56:18 PM
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
        String upQry="update tbn_agency set agency_vstatus=1 where agency_id='"+request.getParameter("aid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Accepted");
                    window.location="AgencyList.jsp";
                                </script>
        <%
            }
        }
        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_agency set agency_vstatus=-1 where agency_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Rejected");
                    window.Location="AgencyList.jsp";
                                </script>
        <%
            }
        }
        
        %>
        <table border="1" align="center">
            <tr>
                <td>Logo</td>
                <td>Proof</td>
                <td>Name</td>
                <td>Email</td>
                <td>Address</td>
                <td>Place</td>
                <td>District</td>
                <td>Action</td></tr>
                <%
                    String selQry = "select * from tbn_agency a inner join tbn_place p on a.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where agency_vstatus=0";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            <tr>
                <td><img src="../Assets/Files/Agency/logo/<%=rs.getString("agency_logo")%>" height="120" width="100"</td>
                <td><img src="../Assets/Files/Agency/proof/<%=rs.getString("agency_proof")%>" height="120" width="100"</td>
                <td><%=rs.getString("agency_name")%></td>
                <td><%=rs.getString("agency_email")%></td>
                <td><%=rs.getString("agency_address")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("district_name")%></td>
                <td>
                    
                    <a href="AgencyList.jsp?aid=<%=rs.getString("Agency_id")%>">Accept</a>
                    <a href="AgencyList.jsp?rid=<%=rs.getString("Agency_id")%>">Reject</a>
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
