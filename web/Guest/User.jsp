<%-- 
    Document   : User
    Created on : Feb 15, 2023, 10:30:18 PM
    Author     : hp
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="User.jsp"></a>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
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
        <form method="post"  enctype="multipart/form-data" action="../Assets/ActionPages/UserAction.jsp">
            <table border="1" align="center">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter your name" required=""></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" onkeyup="Checkemail(this.value)" placeholder="Enter email id" required=""></td>
                </tr>
                <tr>
                    <td>Date Of Birth</td>
                    <td><input type="date" max="<%=Date%>" name="dob" required=""></td>

                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact" placeholder="Enter contact number" required="" pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9"/></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="btnGender" value="Male">Male <br>
                    <input type="radio" name="btnGender" value="Female">Female
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
                    <td>Thaluk</td>

                    <td><select name="place" id="sel_place">
                            <option value="">----select----</option>
                         
                        </select></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea type="text" name="txtaddress" placeholder="Enter the address" required="" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/></textarea></td>
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
                    <td>Photo</td>
                    <td><input type="file" name="fileimage" required=""></td>
                </tr>
                
                <tr>
                    <td colspan="2"align="center">
                        <input type="submit" value="Submit">
                        <input type="reset" value="Reset">
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
                           function Checkemail(did)

{

              //alert(did);

              $.ajax({

              url: "../Assets/AjaxPages/AjaxEmail.jsp?did="+did,

             

                success: function(html){

                           $("#txtemail").html(html);

                          

                }

              });

}
                        </script>