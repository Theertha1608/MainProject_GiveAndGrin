package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("    <title>Give And Grin - Free Bootstrap 5.2.2 CSS Template</title>\n");
      out.write("\n");
      out.write("    <!-- CSS FILES -->\n");
      out.write("    <link href=\"../Assets/Template/Main/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link href=\"../Assets/Template/Main/css/bootstrap-icons.css\" rel=\"stylesheet\">\n");
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
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-light shadow-lg\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"../Guest/Index.jsp\">\n");
      out.write("                <img src=\"../Assets/Template/Main/images/logo.png\" class=\"logo img-fluid\" alt=\"Give And Grin\">\n");
      out.write("                <span>\n");
      out.write("                    GiveAndGrin\n");
      out.write("                    <small>Authorized Crowd Funding For Charity</small>\n");
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
      out.write("                        <a class=\"nav-link click-scroll\" href=\"HomePage.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link click-scroll dropdown-toggle\" href=\"#\"\n");
      out.write("                            id=\"navbarLightDropdownMenuLink\" role=\"button\" data-bs-toggle=\"dropdown\"\n");
      out.write("                            aria-expanded=\"false\">Profile</a>\n");
      out.write("\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-menu-light\" aria-labelledby=\"navbarLightDropdownMenuLink\">\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"MyProfileUser.jsp\">My Profile</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"EditProfileUser.jsp\">Edit Profile</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"ChangePasswordUser.jsp\">Change Password</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item ms-3\">\n");
      out.write("                        <a class=\"nav-link custom-btn custom-border-btn btn\" href=\"FundRequest.jsp\">My Profile</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li class=\"nav-item ms-3\">\n");
      out.write("                        <a class=\"nav-link custom-btn custom-border-btn btn\" href=\"FundRequest.jsp\">Sent A Fund Request</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item ms-3\">\n");
      out.write("                        <a class=\"nav-link custom-btn custom-border-btn btn\" href=\"../Donor/Payment.jsp\">Donate</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link click-scroll dropdown-toggle\" href=\"#\"\n");
      out.write("                            id=\"navbarLightDropdownMenuLink\" role=\"button\" data-bs-toggle=\"dropdown\"\n");
      out.write("                            aria-expanded=\"false\">Complaint</a>\n");
      out.write("\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-menu-light\" aria-labelledby=\"navbarLightDropdownMenuLink\">\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"RegisterComplaint.jsp\">Register Complaint</a></li>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"TrackComplaint.jsp\">Track Complaint</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"../Logout.jsp\">Logout</a>\n");
      out.write("                    </li>\n");
      out.write("                   \n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <main>\n");
      out.write("        <main>\n");
      out.write("\n");
      out.write("        <section class=\"hero-section hero-section-full-height\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"col-lg-12 col-12 p-0\">\n");
      out.write("                        <div id=\"hero-slide\" class=\"carousel carousel-fade slide\" data-bs-ride=\"carousel\">\n");
      out.write("                            <div class=\"carousel-inner\">\n");
      out.write("                                <div class=\"carousel-item active\">\n");
      out.write("                                    <img src=\"../Assets/Template/Main/images/slide/charity.jpg\"\n");
      out.write("                                        class=\"carousel-image img-fluid\" alt=\"...\">\n");
      out.write("\n");
      out.write("                                    <div class=\"carousel-caption d-flex flex-column justify-content-end\">\n");
      out.write("                                        <h1>be a Kind Heart</h1>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"../Assets/Template/Main/images/slide/charity2.jpg\"\n");
      out.write("                                        class=\"carousel-image img-fluid\" alt=\"...\">\n");
      out.write("\n");
      out.write("                                    <div class=\"carousel-caption d-flex flex-column justify-content-end\">\n");
      out.write("                                        <h1>Non-profit</h1>\n");
      out.write("\n");
      out.write("                                        <p>You can support us to grow more</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"../Assets/Template/Main/images/slide/medium-shot-people-collecting-donations.jpg\"\n");
      out.write("                                        class=\"carousel-image img-fluid\" alt=\"...\">\n");
      out.write("\n");
      out.write("                                    <div class=\"carousel-caption d-flex flex-column justify-content-end\">\n");
      out.write("                                        <h1>Humanity</h1>\n");
      out.write("\n");
      out.write("                                        <p>Please tell your friends about our website</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#hero-slide\"\n");
      out.write("                                data-bs-slide=\"prev\">\n");
      out.write("                                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"visually-hidden\">Previous</span>\n");
      out.write("                            </button>\n");
      out.write("\n");
      out.write("                            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#hero-slide\"\n");
      out.write("                                data-bs-slide=\"next\">\n");
      out.write("                                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"visually-hidden\">Next</span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("    </main>\n");
      out.write(" \n");
      out.write("</body>\n");
      out.write("<script src=\"../Assets/Template/Main/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/jquery.sticky.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/click-scroll.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/counter.js\"></script>\n");
      out.write("    <script src=\"../Assets/Template/Main/js/custom.js\"></script>\n");
      out.write("</html>");
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
