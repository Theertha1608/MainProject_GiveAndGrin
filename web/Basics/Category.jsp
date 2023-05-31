<%-- 
    Document   : Category
    Created on : Feb 14, 2023, 10:15:29 PM
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

        <%

            if (request.getParameter("btnsubmit") != null) {

                String Category = request.getParameter("txtcategoryname");

                String CategoryID = request.getParameter("txthid");

                if(CategoryID.equals(""))

                {

                    String insQry = "insert into tbl_category(category_name)values('" + Category + "')";

                if (con.executeCommand(insQry)) {

        %>

        <script>

            alert('Inserted');

           

            window.location='Category.jsp';

        </script>

        <%

        } else {

        %>

        <script>

            alert('Failed');

        </script>

        <%

                }

                }

                else

                {

                    String upQry = "update tbl_category set category_name='" + Category + "' where category_id='"+CategoryID+"'";

                if (con.executeCommand(upQry)) {

        %>

        <script>

            alert('Updated');

           

            window.location='Category.jsp';

        </script>

        <%

        } else {

        %>

        <script>

            alert('Failed');

        </script>

        <%

                }

                }

            }

            if(request.getParameter("cid")!=null)

            {

                String delQry="delete from tbl_category where category_id='"+request.getParameter("cid")+"'";

                if(con.executeCommand(delQry))

                {

                    %>

                    <script>

                        alert('Deleted');

                          window.location='Category.jsp';

                    </script>

                    <%

                }

                    else

                    {

                            %>

                            <script>

                                alert('Failed');

                            </script>

                            <%

                            }

             

            }

            String eid= "",ename="";

            if(request.getParameter("eid")!=null)

            {

                eid = request.getParameter("eid");

                ename = request.getParameter("ename");

            }

        %>

        <form method="post">

            <table border='1' align='center'>

                <tr>

                    <td>

                        Category Name

                    </td>

                    <td>

                        <input type="hidden" name="txthid" value="<%=eid%>">

                        <input value="<%=ename%>" type="text" name="txtcategoryname" placeholder="Enter Category Name" required="">

                    </td>

                </tr>

                <tr>

                    <td colspan="2" align="center">

                        <input type="submit" name="btnsubmit" value="Submit">

                        <input type="submit" name="btncancel" value="Cancel">

                    </td>

                </tr>

            </table>

        </form>

        <table border="1" align="center">

            <tr>

                <td>

                    Sl.No

                </td>

                <td>

                    Category

                </td>

                <td>

                    Action

                </td>

            </tr>

            <%

                int i = 0;

                String selQry = "select * from tbl_category";

                ResultSet rs = con.selectCommand(selQry);

                while (rs.next()) {

                    i++;

            %>

            <tr>

                <td><%=i%></td>

                <td><%=rs.getString("category_name")%></td>

                <td>

                    <a href="Category.jsp?cid=<%=rs.getString("category_id")%>">Delete</a>

                    <a href="Category.jsp?eid=<%=rs.getString("category_id")%>&ename=<%=rs.getString("category_name")%>">Edit</a>

                </td>

            </tr>

           <%

                }

            %>

        </table>

    </body>

</html>
