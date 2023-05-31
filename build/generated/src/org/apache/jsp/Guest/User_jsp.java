package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.sql.ResultSet;

public final class User_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<a href=\"User.jsp\"></a>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        DateFormat yearf = new SimpleDateFormat("YYYY");
        DateFormat monthf = new SimpleDateFormat("MM");
        DateFormat dayf = new SimpleDateFormat("dd");
        String year = yearf.format(new Date());
        String month = monthf.format(new Date());
        String day = dayf.format(new Date());
        int yearnew = Integer.parseInt(year) ;
        
        String Date = String.valueOf(yearnew)+"-"+month+"-"+day;
        
      out.write("\n");
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
      out.write("        <form method=\"post\"  enctype=\"multipart/form-data\" action=\"../Assets/ActionPages/UserAction.jsp\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" placeholder=\"Enter your name\" required=\"\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td><input type=\"email\" name=\"email\" onkeyup=\"Checkemail(this.value)\" placeholder=\"Enter email id\" required=\"\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Date Of Birth</td>\n");
      out.write("                    <td><input type=\"date\" max=\"");
      out.print(Date);
      out.write("\" name=\"dob\" required=\"\"></td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td><input type=\"text\" name=\"contact\" placeholder=\"Enter contact number\" required=\"\" pattern=\"[7-9]{1}[0-9]{9}\" \n");
      out.write("                title=\"Phone number with 7-9 and remaing 9 digit with 0-9\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td><input type=\"radio\" name=\"btnGender\" value=\"Male\">Male <br>\n");
      out.write("                    <input type=\"radio\" name=\"btnGender\" value=\"Female\">Female\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("\n");
      out.write("                    <td><select name=\"district\" onchange=\"getPlace(this.value)\">\n");
      out.write("                            <option value=\"\">----select----</option>\n");
      out.write("                            ");

                                String selQr = "select * from tbn_district";
                                ResultSet rs = con.selectCommand(selQr);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }


                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Place</td>\n");
      out.write("\n");
      out.write("                    <td><select name=\"place\" id=\"sel_place\">\n");
      out.write("                            <option value=\"\">----select----</option>\n");
      out.write("                         \n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><textarea type=\"text\" name=\"txtaddress\" placeholder=\"Enter the address\" required=\"\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\"/></textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td> <input type=\"password\" name=\"txtpassword\" placeholder=\"Enter Password\" required=\"\">     </td>  \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td> <input type=\"password\" name=\"txtconpassword\" placeholder=\"confirm Password\" required=\"\">     </td>  \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td><input type=\"file\" name=\"fileimage\" required=\"\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"align=\"center\">\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                        <input type=\"reset\" value=\"Reset\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form> \n");
      out.write("                        ");
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
      out.write("<script src=\"../Assets/JQuery/jQuery.js\"></script>\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("                        \n");
      out.write("                            function getPlace(did)\n");
      out.write("                            {\n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxPlace.jsp?did=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    $(\"#sel_place\").html(result);\n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           function Checkemail(did)\n");
      out.write("\n");
      out.write("{\n");
      out.write("\n");
      out.write("              //alert(did);\n");
      out.write("\n");
      out.write("              $.ajax({\n");
      out.write("\n");
      out.write("              url: \"../Assets/AjaxPages/AjaxEmail.jsp?did=\"+did,\n");
      out.write("\n");
      out.write("             \n");
      out.write("\n");
      out.write("                success: function(html){\n");
      out.write("\n");
      out.write("                           $(\"#txtemail\").html(html);\n");
      out.write("\n");
      out.write("                          \n");
      out.write("\n");
      out.write("                }\n");
      out.write("\n");
      out.write("              });\n");
      out.write("\n");
      out.write("}\n");
      out.write("                        </script>");
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
