<%-- 
    Document   : SubCategory
    Created on : Feb 15, 2023, 01:37:11 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sub Category</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <% if (request.getParameter("btnsubmit")!=null){
            String ins="insert into tbn_subcategory(category_id,subcategory_name)values('"+request.getParameter("slctcategoryname")+"','"+request.getParameter("txtsubcategory")+"')";
            //out.print(ins);
            con.executeCommand(ins);
        }
             if(request.getParameter("sid")!=null){
                    String DelQry="delete from tbn_subcategory where subcategory_id='"+request.getParameter("sid")+"'";
                    //out.print(DelQry);
                    con.executeCommand(DelQry);
                }
            
        %>
        <form method="post">
            <table border="1" align="center">
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
                    <td>Sub Category</td>
                    <td>
                        <input type="text" name="txtsubcategory" placeholder="Enter Sub Category" required title="Category Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"/>>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnsubmit" value="Submit">
                        <input type="submit" name="btncancel" value="Cancel">
                    </td>
                </tr>
            </table>
                         <table border="1" align="center">
                <tr>
                    <th>Si.NO</th>
                    <th>Category</th>
                    <th>Sub Category</th>
                </tr>
                <%
                int i=0;
                    String selQr="select * from tbn_subcategory";
                    ResultSet rss = con.selectCommand(selQr);
                    while(rss.next())
                    {
                        i++;
                        %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rss.getString("subcategory_name")%></td>
                    <td>
                        <a href="SubCategory.jsp?sid=<%=rss.getString("subcategory_id")%>" >Delete</a></td>
                    
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