package org.apache.jsp.Agency;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class AcceptedFundRequests_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Agency/Head.jsp");
    _jspx_dependants.add("/Agency/Foot.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Accepted Fund Request List</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Kind Heart Charity - Free Bootstrap 5.2.2 CSS Template</title>\n");
      out.write("\n");
      out.write("    <!-- CSS FILES -->\n");
      out.write("    <link href=\"../Assets/Template/Main/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link href=\"../Assets/Template/Main/css/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("      <link href=\"../Assets/Template/form.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link href=\"../Assets/Template/Main/css/templatemo-kind-heart-charity.css\" rel=\"stylesheet\">\n");
      out.write("    <!--\n");
      out.write("\n");
      out.write("TemplateMo 581 Kind Heart Charity\n");
      out.write("\n");
      out.write("https://templatemo.com/tm-581-kind-heart-charity\n");
      out.write("\n");
      out.write("-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"section_1\">\n");
      out.write("\n");
      out.write("    <header class=\"site-header\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-light shadow-lg\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"../Assets/Template/Main/index.html\">\n");
      out.write("                <img src=\"../Assets/Template/Main/images/logo.png\" class=\"logo img-fluid\" alt=\"Kind Heart Charity\">\n");
      out.write("                <span>\n");
      out.write("                    Give And Grin\n");
      out.write("                    <small>Authorized crowd funding Application for charity</small>\n");
      out.write("                </span>\n");
      out.write("            </a>\n");
      out.write("\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\"\n");
      out.write("                aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav ms-auto\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"AgencyHomePage.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("             \n");
      out.write("\n");
      out.write("                       \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyMyProfile.jsp\">My Profile</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyEditProfile.jsp\">Edit Profile</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyChangePassword.jsp\">Change Password</a></li>\n");
      out.write("                        \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
      out.write("                        \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AcceptedFundRequests.jsp\">Accepted Fund Request</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"RejectedFundRequests.jsp\">Rejected Fund Request</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyDonationDetails.jsp\">Donation Details</a></li>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
      out.write("                       \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyRegisterComplaint.jsp\">Register Complaint</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"AgencyTrackComplaint.jsp\">Track Complaint</a></li>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                   <li class=\"nav-item\">\n");
      out.write("                       <a class=\"nav-link click-scroll\" href=\"../Logout.jsp\">log Out</a>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <main>\n");
      out.write("         <div id=\"tab\" align=\"center\">\n");
      out.write("             <br><br><br><br>");
      out.write("\n");
      out.write("        ");

        if(request.getParameter("rid")!=null)
        {
        String upQry="update tbn_fundreq set fundreq_vstatus=-1 where fundreq_id='"+request.getParameter("rid")+"'";
            if(con.executeCommand(upQry))
            {
                
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert(\"Rejected\");\n");
      out.write("                    window.location=\"AcceptedFundRequestList.jsp\";\n");
      out.write("                                </script>\n");
      out.write("        ");

            }
        }
        
        
      out.write("\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                \n");
      out.write("                <td>Proof</td>\n");
      out.write("                <td>Name</td>\n");
      out.write("                <td>Email</td>\n");
      out.write("                <td>Address</td>\n");
      out.write("                <td>Details</td>\n");
      out.write("                <td>Amount</td>\n");
      out.write("                <td>Fund Category</td>\n");
      out.write("                <td>Action</td></tr>\n");
      out.write("                ");

                    String selQry = "select * from tbn_fundreq f inner join tbn_user u on f.user_id= u.user_id inner join tbn_fundcategory fc on f.fundcategory_id=fc.fundcategory_id where fundreq_vstatus=1";
                    System.out.println(selQry);
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                
      out.write("  \n");
      out.write("           <tr>\n");
      out.write("                <td><img src=\"../Assets/Files/FundProof/");
      out.print(rs.getString("fundreq_proof"));
      out.write("\" height=\"120\" width=\"100\"</td>       \n");
      out.write("                <td>");
      out.print(rs.getString("user_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("user_email"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("user_address"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("fundreq_details"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("fundreq_amount"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("fundcategory_name"));
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                  \n");
      out.write("                    <a href=\"AgencyFundRequestList.jsp?rid=");
      out.print(rs.getString("fundreq_id"));
      out.write("\">Reject</a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");


                }
            
      out.write("   \n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("<br><br><br><br><br>\n");
      out.write("</div>\n");
      out.write("</main>\n");
      out.write("\n");
      out.write("    <footer>\n");
      out.write("       \n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("                           \n");
      out.write("                \n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <!-- JAVASCRIPT FILES -->\n");
      out.write("    <script src=\"../Assets/Template/Main/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/jquery.sticky.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/click-scroll.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/counter.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/custom.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
