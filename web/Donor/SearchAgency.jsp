<%-- 
    Document   : SearchAgency
    Created on : Mar 16, 2023, 11:03:48 AM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Agency</title>
    </head>
    <body>
        <%@include  file="Head.jsp" %>
        <form method="post" >
            <table border="1" align="center">
                <tr>
                    <td>Agency</td>
                    <td>
                        <select name="slctcategoryname" onchange="getAg(this.value)">
                             <option value="">-----Select-----</option>
                                <%
                                    String selQry1="select * from tbn_agency";
                                    ResultSet rs1= con.selectCommand(selQry1);
                                    while(rs1.next())
                                    {
                                    %>
                                    
                                    <option value="<%=rs1.getString("agency_id")%>"><%=rs1.getString("agency_name") %></option>
                                    
                                    <%
                                    }
                                %>
                             
                             
                        </select>
                    </td> 
                </tr>
            </table>
        </form>
    <form>
        <table>
           
            <table border="0" align="center" id="search" cellpadding="50px">
                
                
                 
                 
                 
                <tr >
                <%
                    int i=0;
                    String selQry = "select * from tbn_agency a inner join tbn_place p on a.place_id=p.place_id inner join tbn_district d on p.district_id=d.district_id where agency_vstatus=1";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                     i++;   
                %>  
                <td> <p>
               
                       <img src="../Assets/Files/Agency/logo/<%=rs.getString("agency_logo")%>" height="120" width="100"><br>
              Name : 
                       <%=rs.getString("agency_name")%><br>
              Email :
                   <%=rs.getString("agency_email")%><br>
               Address :<%=rs.getString("agency_address")%><br>
               Place :<%=rs.getString("place_name")%><br>
               District :<%=rs.getString("district_name")%><br>
               <a href="Payment.jsp?aid=<%=rs.getString("agency_id")%>">Donate</a>
                    </p></td>

            <%
               if(i==4){
                   out.print("</tr><tr>");
                   i=0;
                 //  out.print("<tr>");
               }
                }
            %>   
        </table>
           
    </form>
       
    </body>
</html>
<script src="../Assets/JQuery/jQuery.js"></script>
<script>

                        
                            function getAg(did)
                            {
                                $.ajax({url:"../Assets/AjaxPages/AjaxSearchAgency.jsp?did=" + did,
                                success: function(result){
                                    $("#search").html(result);
                                }
                            })
                            }
                           
                        </script>
<%@include  file="Foot.jsp" %>