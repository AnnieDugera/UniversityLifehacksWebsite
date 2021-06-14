package org.apache.jsp.Homepage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html><head>\n");
      out.write("\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<title>University Life Hacks</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" </head><body><h1><img src=\"img/Logo.png\" style=\"width:30%;min-height:120px;max-height:200px;\" alt=\"university life hacks logo\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<form class=\"example\" action=\"/action_page.php\" style=\"margin-left:auto;max-width:400px\">\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</h1>\n");
      out.write("<style>\n");
      out.write(" \n");
      out.write(" body {background-color:#fcf9D0 ;}\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  .topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color:#FBE8A6 ;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  color:  #625D5D;\n");
      out.write("  font-family: 'Arsenal', sans-serif;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a:hover {\n");
      out.write("background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.active {\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav-right {\n");
      out.write("  float: right;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a href=\"\">Home</a>  \n");
      out.write("  <a href=\"\">Categories</a>\n");
      out.write("  <a href=\"\">Top 10 Hacks</a>\n");
      out.write("  <a href=\"\">Submit Hack</a>\n");
      out.write("  <a href=\"\">Discussion Board</a>\n");
      out.write("  \n");
      out.write("   <div class=\"topnav-right\">\n");
      out.write("    <a href=\"\">Search</a>\n");
      out.write("    <a href=\"\">Account</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write(" <h2> \n");
      out.write(" \n");
      out.write(" <p style=\"text-align:center;\">\n");
      out.write(" <img src=\"img/webpagepic.png\" alt=\"University Life Hacks homepage\" width=\"90%\"> </p>\n");
      out.write(" \n");
      out.write(" \n");
      out.write("</h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".column {\n");
      out.write("  color: #625D5D;\n");
      out.write("  font-family: 'Arsenal', sans-serif;\n");
      out.write("  font-size: 17px;\n");
      out.write("  text-align: center;\n");
      out.write("  float: left;\n");
      out.write("  padding: 10px;\n");
      out.write("  height: 300px; \n");
      out.write("}\n");
      out.write("\n");
      out.write(".left {\n");
      out.write("  width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".right {\n");
      out.write("  width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("  ul.a {\n");
      out.write("  list-style-type: circle;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<h2><br> <br> </h2>\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("  <div class=\"column left\" style=\"background-color:#FBE8A6\">\n");
      out.write(" \n");
      out.write("    <h2> About us </h2>\n");
      out.write("\n");
      out.write("    <p> Starting University can be difficult, from keeping up with your college work to starting a weekend job, many struggles come with it. University Life hacks shares tips with students to help them with things such as saving money or finding a helpful way of studying. Students can also  share their own hacks with other students, to make college life a bit easier. Our hacks are tested before they are shared to allow the best experience for students.\n");
      out.write("\n");
      out.write("  </p></div>\n");
      out.write("  <div class=\"column right\" style=\"background-color:#FBE8A6\">\n");
      out.write("    <h2>Life Hacks Categories</h2>\n");
      out.write("    <p> <br> \n");
      out.write("</p><ul class=\"a\">\n");
      out.write("  <li>Food</li>\n");
      out.write("  <li>Study and Organisation</li>\n");
      out.write("  <li>Money Saving</li>\n");
      out.write("  <li>Self Care</li>\n");
      out.write("</ul><p></p>\n");
      out.write("<p></p>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<p1>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("</table></fieldset></form></p1></body></html>\n");
      out.write("\n");
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
