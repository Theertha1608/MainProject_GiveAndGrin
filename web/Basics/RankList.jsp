<%-- 
    Document   : RankList
    Created on : Feb 8, 2023, 3:36:45 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RankList</title>
    </head>
    <body>
        <%
            String fname,lname,gender="",className="",div="";
            int m1,m2,m3,total=0,per=0;
            String Name="",Grade="";
            if (request.getParameter("btnsubmit") != null) {
                fname = request.getParameter("txtfname");
                lname= request.getParameter("txtlname");
                gender= request.getParameter("btngender");
                className = request.getParameter("selClass");
                div= request.getParameter("selDiv");
                m1 = Integer.parseInt(request.getParameter("txtmark1"));
                m2 =Integer.parseInt(request.getParameter("txtmark1"));
                m3 = Integer.parseInt(request.getParameter("txtmark3"));
                if(gender.equals("Female"))
                {
                    Name = "Ms."+fname+" "+lname;
                }
               else
                {
                    Name = "Mr."+fname+" "+lname;
                   
                }
                total = m1+m2+m3;
                per = (total*100)/300;
                if(per>90)
                {
                    Grade= "A";
                    
                }
                
                else if (per>80 && per<=90)
                {
                    Grade= "B";
                    
                }
                else if (per>70 && per<=80) 
                {
                    Grade= "B";
                }
                else if (per>60 && per<=70)
                {
                    Grade ="C";
                }
                else if (per>60 && per<=70)
                {
                    Grade ="D";
                }
                else if (per>50 && per<=60)
                {
                    Grade ="E";
                }
                else 
                {
                    Grade ="F";
                }
                
            }
            %>
            <div align="center">
       <form method="post">
            <table>
                <tr>
                    <td>First Name</td>
                    <td>
                        <input type="text" name="txtfname" placeholder="Enter Your Name" required="">
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <input type="text" name="txtlname" placeholder="Enter a Nmuber" required="">
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="btngender" value="Male">Male
                        <input type="radio" name="btngender" value="Female">Female </td>
                </tr>
                <tr>
                    <td>Class</td>
                    <td><select name="selClass">
                            <option>Select</option>
                            <option value="BBA">BBA</option>
                            <option value="BCA">BCA</option>
                            <option value="MBA">MBA</option>
                            <option value="MCA">MCA</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Div</td>
                    <td><select name="selDiv">
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Mark1</td>
                    <td><input type="text" name="txtmark1" placeholder="Enter Mark " required="">
                    </td>
                </tr>
                <tr>
                    <td>Mark2</td>
                    <td>
                    <input type="text" name="txtmark2" placeholder="Enter Mark " required="">
                    </td>
                </tr>
                <tr>
                    <td>Mark3</td>
                    <td><input type="text" name="txtmark3" placeholder="Enter Mark " required="">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="Center">
                     <input type="submit" name="btnsubmit" value="Submit">
                    </td>
                </tr>
                <tr>
            </table>
       </form>
           <table border="1">
                    <td>Name</td>
                    <td><%=Name%></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><%=gender%></td>
                </tr>
                <tr>
                    <td>class</td>
                    <td><%=className%></td>
                </tr>
                <tr>
                    <td>Divison</td>
                    <td><%=div%></td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td><%=total%></td>
                </tr>
                <tr>
                    <td>Percentage</td>
                    <td><%=per%></td>
                </tr>
                <tr>
                    <td>Grade</td>
                    <td><%=Grade%></td>
                </tr>
           </table>
    </body>
</html>
