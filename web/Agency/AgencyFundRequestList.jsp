<%-- 
    Document   : AgencyFundRequestList
    Created on : Mar 15, 2023, 12:22:56 PM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agency Fund Request List</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <%
        if(request.getParameter("aid")!=null)
        {
        String upQry="update tbn_fundreq set fundreq_vstatus=1 where fundreq_id='"+request.getParameter("aid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Accepted");
                    window.location="AgencyHomePage.jsp";
                                </script>
        <%
            }
        }
        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_fundreq set fundreq_vstatus=-1 where fundreq_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                %>
                <script>
                    alert("Rejected");
                    window.location="AgencyHomePage.jsp";
                                </script>
        <%
            }
        }
        
        %>
        <div style="overflow-x: auto ">
        <table border="1" align="center">
            <tr>
                
                <td>Proof</td>
                <td>Name</td>
                <td>Email</td>
                <td>Address</td>
                <td>Details</td>
                <td>Amount</td>
                <td>Fund Category</td>
                <td>Action</td></tr>
                <%
                    String selQry = "select * from tbn_fundreq f inner join tbn_user u on f.user_id= u.user_id inner join tbn_category fc on f.category_id=fc.category_id where fundreq_vstatus=0";
                    System.out.println(selQry);
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>  

            <tr>
                <td><img src="../Assets/Files/FundProof/<%=rs.getString("fundreq_proof")%>" height="120" width="100"</td>       
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("user_email")%></td>
                <td><%=rs.getString("user_address")%></td>
                <td><%=rs.getString("fundreq_details")%></td>
                <td><%=rs.getString("fundreq_amount")%></td>
                <td><%=rs.getString("category_name")%></td>
                <td>
                    <a href="AgencyFundRequestList.jsp?aid=<%=rs.getString("fundreq_id")%>">Accept</a>
                    <a href="AgencyFundRequestList.jsp?rid=<%=rs.getString("fundreq_id")%>">Reject</a>
                </td>
            </tr>

            <%

                }
            %>   

        </table>
        </div>
<%@include  file="Foot.jsp" %>
    </body>
</html>
