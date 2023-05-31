<%-- 
    Document   : Category
    Created on : Feb 15, 2023, 11:20:27 AM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <%if(request.getParameter("btnsave")!=null){
                String Category= request.getParameter("txtcat");
                //out.print(District);
                String inQry="insert into tbn_category(category_name) values('"+Category+"')";
                con.executeCommand(inQry);
                
            }
                if(request.getParameter("cid")!=null){
                String DelQry="delete from tbn_category where category_id='"+request.getParameter("cid")+"'";
                con.executeCommand(DelQry);
               // out.print(DelQry);
                }
            %>
            
                <form>
                    <table align="center" border="1">
                    <tr>
            <td>Category</td>
            <td>
                        <input type="text" name="txtcat" placeholder="Enter Category Name" required>
                    </td>
        <tr>
                     <td colspan="2" align="center">
        
                     
                        <input type="submit" name="btnsave" value="Submit">
                        <input type="submit" name="btnreset" value="Cancel">
                    </td>
                </tr>
                <tr>
        </tr>
  
            </table>
                             </form>

            <table border="1" align="center">
                <tr>
                    <th>Si.NO</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
                <%
                int i=0;
                    String selQry="select * from tbn_category";
                    ResultSet rsc = con.selectCommand(selQry);
                    while(rsc.next())
                    {
                        i++;
                        %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rsc.getString("category_name")%></td>
                    <td>
                        <a href="Category.jsp?cid=<%=rsc.getString("category_id")%>" >Delete</a></td>
                    
                </tr>
                       <%
                            }
                         %>
                
            </table>
    </div>
                         <%@include file="Foot.jsp" %>
    </body>
</html>
