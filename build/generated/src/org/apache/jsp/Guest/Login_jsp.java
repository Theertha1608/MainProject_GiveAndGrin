package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Guest/Head.jsp");
    _jspx_dependants.add("/Guest/Foot.jsp");
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
      out.write("        <title>Login Page</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-image: url(\"two.jpeg\");\n");
      out.write("                background-size:  450px 900px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
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
      out.write("            <a class=\"navbar-brand\">\n");
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
      out.write("                        <a class=\"nav-link click-scroll\" href=\"Login.jsp\"></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"Index.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"Login.jsp\">Login</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"AgencyRegistration.jsp\">New Agency</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"DonorRegistration.jsp\">New Donor</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link click-scroll\" href=\"User.jsp\">New User</a>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\n");
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

            if(request.getParameter("btnsubmit")!=null)
            {
                String username=request.getParameter("txtusername");
                String password=request.getParameter("txtpassword");
                
                String selQryus="select * from tbn_user where user_email='"+username+"' and user_password='"+password+"' and user_vstatus=1";
                ResultSet rsus=con.selectCommand(selQryus);
                if(rsus.next())
                {
                    session.setAttribute("uid",rsus.getString("user_id"));
                    session.setAttribute("uname",rsus.getString("user_name"));
                    response.sendRedirect("../User/HomePage.jsp");
                }
                String selQryad="select * from tbn_admin where admin_email='"+username+"' and admin_password='"+password+"'";
                ResultSet rsad=con.selectCommand(selQryad);
                 if(rsad.next())
                {
                    session.setAttribute("adid",rsad.getString("admin_id"));
                    session.setAttribute("adname",rsad.getString("admin_name"));
                    response.sendRedirect("../Admin/HomePage.jsp");
                }
                String selQrydr="select * from tbn_donor where donor_email='"+username+"' and donor_password='"+password+"' and donor_vstatus=1";
                ResultSet rsdr=con.selectCommand(selQrydr);
                 if(rsdr.next())
                {
                    session.setAttribute("drid",rsdr.getString("donor_id"));
                    session.setAttribute("dname",rsdr.getString("donor_name"));
                    response.sendRedirect("../Donor/DonorHomePage.jsp");
                }
                String selQryag="select * from tbn_agency where agency_email='"+username+"' and agency_password='"+password+"' and agency_vstatus=1";
                ResultSet rsag=con.selectCommand(selQryag);
                 if(rsag.next())
                {
                    session.setAttribute("agid",rsag.getString("agency_id"));
                    session.setAttribute("aname",rsag.getString("agency_name"));
                    response.sendRedirect("../Agency/AgencyHomePage.jsp");
                }
                
                } 
      
            
      out.write("\n");
      out.write("        <form> \n");
      out.write("            <table align=\"center\" border=\"1\">\n");
      out.write("    \n");
      out.write("                <tr>\n");
      out.write("                    <td>User Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"txtusername\" placeholder=\"Enter Username\" required=\"\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"txtpassword\" placeholder=\"Enter Password\" required=\"\"></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td colspan=\"2\"align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btnsubmit\" value=\"Login\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("    </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        ");
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
