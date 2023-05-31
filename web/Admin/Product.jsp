<%-- 
    Document   : Product
    Created on : Feb 16, 2023, 1:39:43 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/ProductAction.jsp">
            <table border="1" align="center">
                <tr>
                    <td>
                        Category
                    </td>
                    <td><select name="selectcategoryname" onchange="getSubcategory(this.value)">
                             <option value="">----select----</option>
                            <%
                                String selQr = "select * from tbn_category";
                                ResultSet rs = con.selectCommand(selQr);
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getString("category_id")%>"><%=rs.getString("category_name")%></option>
                            <%
                                }


                            %>
                        </select></td>
                </tr>
                <td>Sub Category</td>
                <td><select name="selectcategoryname" id="sel_subcategory">
                             <option value="">----select----</option>
                            <%
                                String selQry = "select * from tbn_subcategory";
                                ResultSet rs1 = con.selectCommand(selQry);
                                while (rs1.next()) {
                            %>

                            <option value="<%=rs1.getString("subcategory_id")%>"><%=rs1.getString("subcategory_name")%></option>
                            <%
                                }


                            %>
                    </select>
                </td>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="txtproductname" placeholder="Enter The Product Name" required=""></td>              

                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="txtprice" placeholder="Enter The Price" required=""></td>              

                </tr>
                <tr>
                    <td>Details</td>
                    <td><input type="text" name="txtdetails" placeholder="Enter The Details" required=""></td>              

                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="fileimage"></td>              

                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="Submit" name="btnsubmit" value="Submit">
                         <input type="Submit" name="btncancel" value="Cancel">    
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
  <script src="../Assets/JQuery/jQuery.js"></script>
  <script >
                            function getSubcategory(cid)
                            {
                                $.ajax({url:"../Assets/AjaxPages/AjaxSubcategory.jsp?cid=" + cid,
                                success: function(result){
                                    $("#sel_subcategory").html(result);
                                }
                            })
                            }
                           
                        </script>
