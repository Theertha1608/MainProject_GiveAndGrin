<%-- 
    Document   : AgencyRegistration
    Created on : Feb 21, 2023, 11:33:42 AM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor</title>
    </head>
    <body>
        <%
        DateFormat yearf = new SimpleDateFormat("YYYY");
        DateFormat monthf = new SimpleDateFormat("MM");
        DateFormat dayf = new SimpleDateFormat("dd");
        String year = yearf.format(new Date());
        String month = monthf.format(new Date());
        String day = dayf.format(new Date());
        int yearnew = Integer.parseInt(year) ;
        
        String Date = String.valueOf(yearnew)+"-"+month+"-"+day;
        %>
        <%@include  file="Head.jsp" %>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/DonorAction.jsp">
            <table border="1" align="center">
                <tr>
                    <td>Donor Name</td>
                    <td><input type="text" name="name" placeholder="Enter your name" required="" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></td>
                </tr>
                <tr>
                    <td> Contact</td>
                    <td><input type="text" name="contact" placeholder="Enter contact number" required="" pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9"/></td>
                </tr>
                 <tr>
                    <td>Address</td>
                    <td><textarea type="text" name="txtaddress" placeholder="Enter the address" required="" title="Address Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></textarea></td>
                </tr>
                <tr>
                    <td> Email</td>
                    <td><input type="email" name="email" onkeyup="Checkemail(this.value)" placeholder="Enter email id" required=""></td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td><input type="file" name="filephoto" required=""></td>
                </tr>
                <tr>
                    <td>Category </td>
                    <td>
                        <select name="slctcategoryname">
                                <option value="">-----Select-----</option>
                                <%
                                String SelQry="select * from tbn_category";
                                ResultSet rsc= con.selectCommand(SelQry);
                                    while(rsc.next())
                                    {                         
                                %>
                                <option value="<%=rsc.getString("category_id")%>"><%=rsc.getString("category_name")%></option>
                                <%
                                    }
                                    %>
                        </select>
                    </td>
                </tr>
                
                             <tr>
                    <td>District</td>

                    <td><select name="district" onchange="getPlace(this.value)">
                            <option value="">----select----</option>
                            <%
                                String selQr = "select * from tbn_district";
                                ResultSet rs = con.selectCommand(selQr);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                            <%
                                }


                            %>
                        </select>
                </tr>
                <tr>
                    <td>Place</td>

                    <td><select name="place" id="sel_place">
                            <option value="">----select----</option>
                         
                        </select></td>
                </tr>
               
                <tr>
                    <td>Password</td>
                    <td> <input type="password" name="txtpassword" placeholder="Enter Password" required="">     </td>  
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td> <input type="password" name="txtconpassword" placeholder="confirm Password" required="">     </td>  
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnsubmit" value="Submit">
                        <input type="submit" name="btnreset" value="Reset">
                    </td>
                </tr>
               
            </table>
        </form>  
                        <%@include  file="Foot.jsp" %>
    </body>
</html>
<script src="../Assets/JQuery/jQuery.js"></script>
<script>

                        
                            function getPlace(did)
                            {
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                success: function(result){
                                    $("#sel_place").html(result);
                                }
                            })
                            }
                           
                        </script>
