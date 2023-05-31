<%-- 
    Document   : District
    Created on : Feb 15, 2023, 10:46:32 AM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a href="District.jsp"></a>
        <title>District</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
            <form>
                <%
                    if (request.getParameter("btnsave") != null) {
                        String District = request.getParameter("txtdist");
                        //out.print(District);
                        String selQry1 = "select * from tbn_district where district_name='" + District + "'";
                        ResultSet rs1 = con.selectCommand(selQry1);
                        if (rs1.next()) {
                %>

                <script>

                    alert('District already exist');

                </script>

                <%                        } else {

                            String inQry = "insert into tbn_district(district_name) values('" + District + "')";
                            con.executeCommand(inQry);

                        }
                    }
                    if (request.getParameter("did") != null) {
                        String DelQry = "delete from tbn_district where district_id='" + request.getParameter("did") + "'";
                        //out.print(DelQry);
                        con.executeCommand(DelQry);
                    }


                %>

                <table border="1" align="center">
                    <tr>
                        <td>District</td>
                        <td>
                            <input type="text" name="txtdist" placeholder="Enter District Name" required pattern="^[A-Z]+[a-zA-Z ]*$"/>
                        </td>
                    <tr>
                        <td colspan="2" align="center">


                            <input type="submit" name="btnsave" value="Save">
                            <input type="submit" name="btnreset" value="Reset">
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </table>
                <table border="1" align="center">
                    <tr>
                        <th>Si.NO</th>
                        <th>District</th>
                        <th>Action</th>
                    </tr>
                    <%                    int i = 0;
                        String selQry = "select * from tbn_district";
                        ResultSet rsd = con.selectCommand(selQry);
                        while (rsd.next()) {
                            i++;
                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=rsd.getString("district_name")%></td>
                        <td>
                            <a href="District.jsp?did=<%=rsd.getString("district_id")%>" >Delete</a></td>
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
