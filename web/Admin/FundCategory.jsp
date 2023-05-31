<%-- 
    Document   : FundCategory
    Created on : Mar 15, 2023, 10:48:08 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fund Category</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <%if(request.getParameter("btnsave")!=null){
                String FCategory= request.getParameter("txtfcat");
                //out.print(District);
                String inQry="insert into tbn_fundcategory(fundcategory_name) values('"+FCategory+"')";
                con.executeCommand(inQry);
                
            }
                if(request.getParameter("fcid")!=null){
                String DelQry="delete from tbn_fundcategory where fundcategory_id='"+request.getParameter("fcid")+"'";
                con.executeCommand(DelQry);
               // out.print(DelQry);
                }
            %>
            
                <form>
                    <table align="center" border="1">
                    <tr>
            <td>Fund Category</td>
            <td>
                        <input type="text" name="txtfcat" placeholder="Enter Fund Category Name" required pattern="^[A-Z]+[a-zA-Z ]*$"/>>
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
                    <th>Fund Category</th>
                    <th>Action</th>
                </tr>
                <%
                int i=0;
                    String selQry="select * from tbn_fundcategory";
                    ResultSet rsc = con.selectCommand(selQry);
                    while(rsc.next())
                    {
                        i++;
                        %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rsc.getString("fundcategory_name")%></td>
                    <td>
                        <a href="FundCategory.jsp?fcid=<%=rsc.getString("fundcategory_id")%>" >Delete</a></td>
                    
                </tr>
                       <%
                            }
                         %>
                
            </table>
                         <%@include file="Head.jsp" %>
    </body>
</html>

