package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class SubCategory_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/Head.jsp");
    _jspx_dependants.add("/Admin/Foot.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Sub Category</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>DASHMIN - Bootstrap Admin Template</title>\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link href=\"../Assets/Template/Admin/img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Web Fonts -->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Icon Font Stylesheet -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Libraries Stylesheet -->\n");
      out.write("        <link href=\"../Assets/Template/Admin/lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../Assets/Template/Admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("        <link href=\"../Assets/Template/Admin/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Stylesheet -->\n");
      out.write("        <link href=\"../Assets/Template/Admin/css/style.css\" rel=\"stylesheet\">\n");
      out.write("         <link href=\"../Assets/Template/form.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-xxl position-relative bg-white d-flex p-0\">\n");
      out.write("            <!-- Spinner Start -->\n");
      out.write("            <div id=\"spinner\" class=\"show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center\">\n");
      out.write("                <div class=\"spinner-border text-primary\" style=\"width: 3rem; height: 3rem;\" role=\"status\">\n");
      out.write("                    <span class=\"sr-only\">Loading...</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Spinner End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Sidebar Start -->\n");
      out.write("            <div class=\"sidebar pe-4 pb-3\">\n");
      out.write("                <nav class=\"navbar bg-light navbar-light\">\n");
      out.write("                    <a href=\"\" class=\"navbar-brand mx-4 mb-3\">\n");
      out.write("                        <h3 class=\"text-primary\"><i class=\"\"></i>Theertha</h3>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"d-flex align-items-center ms-4 mb-4\">\n");
      out.write("                        <div class=\"position-relative\">\n");
      out.write("                            <img class=\"rounded-circle\" src=\"../Assets/Template/Admin/img/admin.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                            <div class=\"bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"ms-3\">\n");
      out.write("                            <h6 class=\"mb-0\">Theertha</h6>\n");
      out.write("                            <span>Admin</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"navbar-nav w-100\">\n");
      out.write("                        <a href=\"HomePage.jsp\" class=\"nav-item nav-link\">\n");
      out.write("                            <i class=\"fa fa-th me-2\"></i>Dashboard\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"Category.jsp\" class=\"nav-item nav-link\">\n");
      out.write("                            <i class=\"fa fa-th me-2\"></i>Fund Category\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><i class=\"fa fa-laptop me-2\"></i>Location</a>\n");
      out.write("                            <div class=\"dropdown-menu bg-transparent border-0\">\n");
      out.write("                                <a href=\"District.jsp\" class=\"dropdown-item\">District</a>\n");
      out.write("                                <a href=\"Place.jsp\" class=\"dropdown-item\">Place</a>\n");
      out.write("                     \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><i class=\"fa fa-laptop me-2\"></i>Agency Verification</a>\n");
      out.write("                            <div class=\"dropdown-menu bg-transparent border-0\">\n");
      out.write("                                <a href=\"AgencyList.jsp\" class=\"dropdown-item\">New</a>\n");
      out.write("                                <a href=\"AcceptedAgencyList.jsp\" class=\"dropdown-item\">Accepted</a>\n");
      out.write("                                <a href=\"RejectedAgencyList.jsp\" class=\"dropdown-item\">Rejected</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><i class=\"fa fa-laptop me-2\"></i>Donor Verification</a>\n");
      out.write("                            <div class=\"dropdown-menu bg-transparent border-0\">\n");
      out.write("                                <a href=\"DonorList.jsp\" class=\"dropdown-item\">New</a>\n");
      out.write("                                <a href=\"AcceptedDonorList.jsp\" class=\"dropdown-item\">Accepted</a>\n");
      out.write("                                <a href=\"RejectedDonorList.jsp\" class=\"dropdown-item\">Rejected</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><i class=\"fa fa-laptop me-2\"></i>User Verification</a>\n");
      out.write("                            <div class=\"dropdown-menu bg-transparent border-0\">\n");
      out.write("                                <a href=\"UserList.jsp\" class=\"dropdown-item\">New</a>\n");
      out.write("                                <a href=\"AcceptedUserList.jsp\" class=\"dropdown-item\">Accepted</a>\n");
      out.write("                                <a href=\"RejectedUserList.jsp\" class=\"dropdown-item\">Rejected</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <a href=\"UserViewComplaint.jsp\" class=\"nav-item nav-link\">\n");
      out.write("                            <i class=\"fa fa-th me-2\"></i>View Complaint\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"UserViewFeedback.jsp\" class=\"nav-item nav-link\">\n");
      out.write("                            <i class=\"fa fa-th me-2\"></i>View Feedback\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("            <!-- Sidebar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Content Start -->\n");
      out.write("<!--            <div class=\"content\">\n");
      out.write("                 Navbar Start \n");
      out.write("                <nav class=\"navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0\">\n");
      out.write("                    <a href=\"../Assets/Template/Admin/index.html\" class=\"navbar-brand d-flex d-lg-none me-4\">\n");
      out.write("                        <h2 class=\"text-primary mb-0\"><i class=\"fa fa-hashtag\"></i></h2>\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"../Assets/Template/Admin/#\" class=\"sidebar-toggler flex-shrink-0\">\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <form class=\"d-none d-md-flex ms-4\">\n");
      out.write("                        <input class=\"form-control border-0\" type=\"search\" placeholder=\"Search\">\n");
      out.write("                    </form>\n");
      out.write("                    <div class=\"navbar-nav align-items-center ms-auto\">-->\n");
      out.write("<!--                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"../Assets/Template/Admin/#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                                <i class=\"fa fa-envelope me-lg-2\"></i>\n");
      out.write("                                <span class=\"d-none d-lg-inline-flex\">Message</span>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <div class=\"d-flex align-items-center\">\n");
      out.write("                                        <img class=\"rounded-circle\" src=\"../Assets/Template/Admin/img/admin.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                        <div class=\"ms-2\">\n");
      out.write("                                            <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                            <small>15 minutes ago</small>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <div class=\"d-flex align-items-center\">\n");
      out.write("                                        <img class=\"rounded-circle\" src=\"../Assets/Template/Admin/img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                        <div class=\"ms-2\">\n");
      out.write("                                            <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                            <small>15 minutes ago</small>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <div class=\"d-flex align-items-center\">\n");
      out.write("                                        <img class=\"rounded-circle\" src=\"../Assets/Template/Admin/img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                        <div class=\"ms-2\">\n");
      out.write("                                            <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                            <small>15 minutes ago</small>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item text-center\">See all message</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>-->\n");
      out.write("<!--                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"../Assets/Template/Admin/#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                                <i class=\"fa fa-bell me-lg-2\"></i>\n");
      out.write("                                <span class=\"d-none d-lg-inline-flex\">Notificatin</span>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <h6 class=\"fw-normal mb-0\">Profile updated</h6>\n");
      out.write("                                    <small>15 minutes ago</small>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <h6 class=\"fw-normal mb-0\">New user added</h6>\n");
      out.write("                                    <small>15 minutes ago</small>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item\">\n");
      out.write("                                    <h6 class=\"fw-normal mb-0\">Password changed</h6>\n");
      out.write("                                    <small>15 minutes ago</small>\n");
      out.write("                                </a>\n");
      out.write("                                <hr class=\"dropdown-divider\">\n");
      out.write("                                <a href=\"../Assets/Template/Admin/#\" class=\"dropdown-item text-center\">See all notifications</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>-->\n");
      out.write("                        <div class=\"nav-item dropdown\">\n");
      out.write("                            <a href=\"../Assets/Template/Admin/#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                                <img class=\"rounded-circle me-lg-2\" src=\"../Assets/Template/Admin/img/admin.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                <span class=\"d-none d-lg-inline-flex\">Theertha</span>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                               \n");
      out.write("                                <a href=\"../Logout.jsp\" class=\"dropdown-item\">Log Out</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("                <!-- Navbar End -->\n");
      out.write("\n");
      out.write("                <!-- Sale & Revenue Start -->\n");
      out.write("                <div class=\"container-fluid pt-4 px-4\">\n");
      out.write("                    <div id=\"tab\" align=\"center\">\n");
      out.write("                  ");
      out.write("\n");
      out.write("        <div id=\"tab\" align=\"center\">\n");
      out.write("        ");
 if (request.getParameter("btnsubmit")!=null){
            String ins="insert into tbn_subcategory(category_id,subcategory_name)values('"+request.getParameter("slctcategoryname")+"','"+request.getParameter("txtsubcategory")+"')";
            //out.print(ins);
            con.executeCommand(ins);
        }
             if(request.getParameter("sid")!=null){
                    String DelQry="delete from tbn_subcategory where subcategory_id='"+request.getParameter("sid")+"'";
                    //out.print(DelQry);
                    con.executeCommand(DelQry);
                }
            
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Category </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"slctcategoryname\">\n");
      out.write("                                <option value=\"\">-----Select-----</option>\n");
      out.write("                                ");

                                String SelQry="select * from tbn_category";
                                ResultSet rsc= con.selectCommand(SelQry);
                                    while(rsc.next())
                                    {                         
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(rsc.getString("category_id"));
      out.write('"');
      out.write('>');
      out.print(rsc.getString("category_name"));
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                    
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Sub Category</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtsubcategory\" placeholder=\"Enter Sub Category\" required title=\"Category Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\"/>>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btnsubmit\" value=\"Submit\">\n");
      out.write("                        <input type=\"submit\" name=\"btncancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                         <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Si.NO</th>\n");
      out.write("                    <th>Category</th>\n");
      out.write("                    <th>Sub Category</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                int i=0;
                    String selQr="select * from tbn_subcategory";
                    ResultSet rss = con.selectCommand(selQr);
                    while(rss.next())
                    {
                        i++;
                        
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rss.getString("subcategory_name"));
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"SubCategory.jsp?sid=");
      out.print(rss.getString("subcategory_id"));
      out.write("\" >Delete</a></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                       ");

                            }
                         
      out.write("\n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("        ");
      out.write("</div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Sale & Revenue End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- Content End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Back to Top -->\n");
      out.write("            <a href=\"../Assets/Template/Admin/#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- JavaScript Libraries -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/chart/chart.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/easing/easing.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/tempusdominus/js/moment.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/tempusdominus/js/moment-timezone.min.js\"></script>\n");
      out.write("        <script src=\"../Assets/Template/Admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Javascript -->\n");
      out.write("        <script src=\"../Assets/Template/Admin/js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
      out.write("\n");
      out.write("    </body>\n");
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
