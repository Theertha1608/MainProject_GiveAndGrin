<%-- 
    Document   : uuuuuu
    Created on : Mar 21, 2023, 9:46:30 PM
    Author     : hp
--%>
String Reply= request.getParameter("txtreply");


<div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="AgencyHomePage.jsp">Home</a>
                    </li>
                   
                    
             

                       
                            <li><a class="dropdown-item" href="AgencyMyProfile.jsp">My Profile</a></li>
                            <li><a class="dropdown-item" href="AgencyEditProfile.jsp">Edit Profile</a></li>
                            <li><a class="dropdown-item" href="AgencyChangePassword.jsp">Change Password</a></li>
                        
                    
                    

                        
                            <li><a class="dropdown-item" href="AcceptedFundRequests.jsp">Accepted Fund Request</a></li>
                            <li><a class="dropdown-item" href="RejectedFundRequests.jsp">Rejected Fund Request</a></li>
                            <li><a class="dropdown-item" href="AgencyDonationDetails.jsp">Donation Details</a></li>
                        
                    </li>
                    
                    

                       
                            <li><a class="dropdown-item" href="AgencyRegisterComplaint.jsp">Register Complaint</a></li>
                            <li><a class="dropdown-item" href="AgencyTrackComplaint.jsp">Track Complaint</a></li>
                        
                    </li>
                   <li class="nav-item">
                       <a class="nav-link click-scroll" href="../Logout.jsp">log Out</a>
                    </li>
                    
                </ul>
            </div>
        </div>



<%-- 
    Document   : DonorHomePage
    Created on : Mar 14, 2023, 3:50:13 PM
    Author     : hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Home Page</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("dname")%> </h1>
        
        <a href="DonorMyProfile.jsp">My Profile</a><br><br>
        <a href="DonorEditProfile.jsp">Edit Profile</a><br><br>
        <a href="DonorChangePassword.jsp">Change Password</a><br><br>
        <a href="SearchAgency.jsp">Make a payment</a><br><br>
        <a href="DonationDetails.jsp">Donation Details</a><br><br>
        <a href="DonorRegisterComplaint.jsp">Add a Complaint</a><br><br>
        <a href="DonorTrackComplaint.jsp">Track My Complaint</a><br><br>
        <a href="DonorFeedback.jsp">Sent a Feedback</a><br><br>
        <a href="SearchAgency.jsp">Search Agency</a><br><br>
    </body>
</html>



<section class="section-padding">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 col-12 text-center mx-auto">
                        <h2 class="mb-5">Welcome to Give And Grin</h2>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="../Assets/Template/Main/donate.html" class="d-block">
                                <img src="../Assets/Template/Main/images/icons/hands.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">Become a <strong>volunteer</strong></p>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="../Assets/Template/Main/donate.html" class="d-block">
                                <img src="../Assets/Template/Main/images/icons/heart.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text"><strong>Caring</strong> Earth</p>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0 mb-md-4">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="../Assets/Template/Main/donate.html" class="d-block">
                                <img src="../Assets/Template/Main/images/icons/receive.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text">Make a <strong>Donation</strong></p>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="featured-block d-flex justify-content-center align-items-center">
                            <a href="../Assets/Template/Main/donate.html" class="d-block">
                                <img src="../Assets/Template/Main/images/icons/scholarship.png" class="featured-block-image img-fluid" alt="">

                                <p class="featured-block-text"><strong>Scholarship</strong> Program</p>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </section>        

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agency Home Page</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("aname")%> </h1>
        <a href="AgencyMyProfile.jsp">My Profile</a><br><br>
        <a href="AgencyEditProfile.jsp">Edit Profile</a><br><br>
        <a href="AgencyChangePassword.jsp">Change Password</a><br><br>
        <a href="AgencyFundRequestList.jsp">Fund Request List</a><br><br>
        <a href="AcceptedFundRequests.jsp">Accepted Fund Request List</a><br><br>
        <a href="RejectedFundRequests.jsp">Rejected Fund Request List</a><br><br>
        <a href="AgencyDonationDetails.jsp">Donation Details</a><br><br>
        <a href="AgencyRegisterComplaint.jsp">Add a Complaint</a><br><br>
        <a href="AgencyTrackComplaint.jsp">Track Complaint</a><br><br>
        <a href="AgencyFeedback.jsp">Sent a Feedback</a><br><br>
    </body>
</html>










<div class="col-lg-5 col-md-7 col-12">
                        <div class="custom-text-block">
                            <h2 class="mb-0">Sandy Chan</h2>

                            <p class="text-muted mb-lg-4 mb-md-4">Founding Partner</p>

                            <p>Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito Professional
                                charity theme based</p>

                            <p>Sed leo nisl, posuere at molestie ac, suscipit auctor mauris. Etiam quis metus</p>

                            <ul class="social-icon mt-4">
                                <li class="social-icon-item">
                                    <a href="../Assets/Template/Main/#" class="social-icon-link bi-twitter"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="../Assets/Template/Main/#" class="social-icon-link bi-facebook"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="../Assets/Template/Main/#" class="social-icon-link bi-instagram"></a>
                                </li>
                            </ul>
                        </div>
                    </div>












 <script>
                       alert('Inserted');
                       out.println(inQry);
                       window.location="HompepageAd.jsp";
                    </script>
                    <%
                }
                else {
                   %>
                   <script>
                       alert('Failed');
                       out.println(inQry);
                       window>location="HomepageAd.jsp";
                   </script>
                     <%
                }
            
            %>























<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
if(request.getParameter("btnsave")!=null){
                String Category= request.getParameter("txtcat");
                //out.print(District);
                String inQry="insert into tbn_category(category_name) values('"+Category+"')";
                con.executeCommand(inQry);
              
                
                
                 if(request.getParameter("submit")!=null)
         {
             String ins="insert into tbn_complaint(complaint_description)values('"+request.getParameter("txtdescription");
             con.executeCommand(ins);
         }