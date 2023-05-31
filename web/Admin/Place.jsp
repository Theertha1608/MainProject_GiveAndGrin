<%-- 
    Document   : Place
    Created on : Feb 15, 2023, 12:20:34 AM
    Author     : hp
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place</title>
    </head>
 <body>
     <%@include file="Head.jsp" %>
     <div id="tab" align="center">
     <%
         if(request.getParameter("btnsubmit")!=null)
         {
             String ins="insert into tbn_place(place_name,place_pincode,district_id)values('"+request.getParameter("txtplacename")+"','"+request.getParameter("txtpincode")+"','"+request.getParameter("selectdisname")+"')";
             if(con.executeCommand(ins))
             {
                 %>
                 <script>
                     alert("Inserted");
                     window.location="Place.jsp"
                 </script>
                 <%
                 }
                 else
                 {
             %>
             <script>
             alert("Faild")
                      </script>
                      <%
         }
         }
          if(request.getParameter("pid")!=null){
                    String DelQry="delete from tbn_place where place_id='"+request.getParameter("pid")+"'";
                    //out.print(DelQry);
                    if(con.executeCommand(DelQry))
                    {
            
     %>
     
     <script>
         alert('Deleted');
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
          %>
                              
                              
             
            
     <form method="post">
            <table align="center">
                <tr>
                    <td>District Name</td>
                    <td>
                        <select name="selectdisname">
                            <option value="">-----Select----</option>
                                <%
                                    String selQry="select * from tbn_district";
                                    ResultSet rsd= con.selectCommand(selQry);
                                    while(rsd.next())
                                    {
                                    %>
                                    
                                    <option value="<%=rsd.getString("district_id")%>"><%=rsd.getString("district_name") %></option>
                                    
                                    <%
                                    }
                                %>
              
                                
                            </select>
                    </td>
                </tr>
                <tr>
                    <td>Place Name</td>
                    <td>
                        <input type="text" name="txtplacename" placeholder="Enter Place Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" required pattern="^[A-Z]+[a-zA-Z ]*$"/>
                    </td>
                </tr>
                <tr>
                    <td>Pin code</td>
                    <td>
                        <input type="text" name="txtpincode" placeholder="Enter Pincode" required pattern="[6-6]{1}[0-9]{5}" 
                title="Pincode start with 6 and remaing 5 digit with 0-9"/>
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
                    <th>Sl.NO</th>
                    <th>Place Name</th>
                    <th>Place </th>
                    <th>PinCode</th>
                    <th>Action</th>
                </tr>
                <%
                int i=0;
                    String selQr="select * from tbn_place p inner join tbn_district d on p.district_id=d.district_id";
                    ResultSet rsc = con.selectCommand(selQr);
                    while(rsc.next())
                    {
                        i++;
                        %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rsc.getString("district_name")%></td>
                    <td><%=rsc.getString("place_name")%></td>
                    <td><%=rsc.getString("place_pincode")%></td>
                    <td><a href="Place.jsp?pid=<%=rsc.getString("place_id")%>">Delete</a></td>
                    
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
