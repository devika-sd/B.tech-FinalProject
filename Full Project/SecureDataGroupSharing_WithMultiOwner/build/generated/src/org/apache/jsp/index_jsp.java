package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<title>Secured Cloud</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0\">\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"css/images/favicon.ico\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<!--\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,600,500,300,200,100' rel='stylesheet' type='text/css'>\n");
      out.write("-->\n");
      out.write("<script src=\"js/jquery-1.8.0.min.js\"></script>\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("<script src=\"js/modernizr.custom.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<script src=\"js/jquery.carouFredSel-5.5.0-packed.js\"></script>\n");
      out.write("<script src=\"js/functions.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- wrapper -->\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("  <!-- shell -->\n");
      out.write("  <div class=\"shell\">\n");
      out.write("    <!-- container -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <!-- header -->\n");
      out.write("      <header id=\"header\">\n");
      out.write("        <h1 id=\"logo\"><a href=\"#\">Secure Cloud Computing</a></h1>\n");
      out.write("        <!-- search -->\n");
      out.write("        <div class=\"search\">\n");
      out.write("          <form action=\"#\" method=\"post\">\n");
      out.write("            <input type=\"text\" class=\"field\" value=\"keywords here ...\" title=\"keywords here ...\">\n");
      out.write("            <input type=\"submit\" class=\"search-btn\" value=\"\">\n");
      out.write("            <div class=\"cl\">&nbsp;</div>\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("        <!-- end of search -->\n");
      out.write("        <div class=\"cl\">&nbsp;</div>\n");
      out.write("      </header>\n");
      out.write("      <!-- end of header -->\n");
      out.write("      <!-- navigaation -->\n");
      out.write("      <nav id=\"navigation\"> <a href=\"#\" class=\"nav-btn\">HOME<span></span></a>\n");
      out.write("        <ul>\n");
      out.write("          <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("          <li><a href=\"TALogin.jsp\">TA Login</a></li>\n");
      out.write("          <li><a href=\"AdminLogin.jsp\">Admin Login</a></li>\n");
      out.write("          <li><a href=\"LoginForm.jsp\">Users Login</a></li>\n");
      out.write("          <li><a href=\"About.jsp\">About</a></li>\n");
      out.write("          <li><a href=\"Contact.jsp\">Contacts</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <div class=\"cl\">&nbsp;</div>\n");
      out.write("      </nav>\n");
      out.write("      <!-- end of navigation -->\n");
      out.write("      <!-- slider-holder -->\n");
      out.write("      <div class=\"slider-holder\">\n");
      out.write("        <!-- slider -->\n");
      out.write("        <div class=\"slider\">\n");
      out.write("          <div class=\"socials\"> <a href=\"#\" class=\"facebook-ico\">facebook-ico</a> <a href=\"#\" class=\"twitter-ico\">twitter-ico</a> <a href=\"#\" class=\"skype-ico\">skype-ico</a> <a href=\"#\" class=\"rss-ico\">rss-ico</a>\n");
      out.write("            <div class=\"cl\">&nbsp;</div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"arrs\"> <a href=\"#\" class=\"prev-arr\"></a> <a href=\"#\" class=\"next-arr\"></a> </div>\n");
      out.write("          <ul>\n");
      out.write("            <li id=\"img1\">\n");
      out.write("              <div class=\"slide-cnt\">\n");
      out.write("                <h4></h4>\n");
      out.write("                <h4>Secure Cloud Computing in Group Sharing</h4>\n");
      out.write("                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Secure Data Group Sharing with Multi-Owner in Cloud</p>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("                <img src=\"css/images/mac-img.png\" alt=\"\" style=\"width: 100px; height: 65px;\"> </li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        <!-- end of slider -->\n");
      out.write("        <!-- thumbs -->\n");
      out.write("        \n");
      out.write("        <!-- end of thumbs -->\n");
      out.write("      </div>\n");
      out.write("      <!-- main -->\n");
      out.write("      <div class=\"main\">\n");
      out.write("        <div class=\"featured\">\n");
      out.write("          <h4>Welcome to <strong>Secure Cloud Computing.</strong> </h4>\n");
      out.write("          <a href=\"#\" class=\"blue-btn\">GET IN TOUCH</a> </div>\n");
      out.write("          <p style=\"text-align: justify; text-indent: 150px; line-height: 25px;\">\n");
      out.write("              It proposes a secure data group sharing and conditional dissemination scheme with multi-owner in cloud computing, in which data owner can share private data with a group of users via the cloud in a secure way, and data disseminator can disseminate the data to a new group of users if the attributes satisfy the access policies in the ciphertext. We  further  present a multi party access control mechanism over the disseminated ciphertext, in which the data co-owners can append new access policies to the ciphertext due to their privacy preferences. Moreover, three policy aggregation strategies, including full permit, owner priority and majority permit, are provided to solve the privacy conflicts problem caused by different access policies. The security analysis and experimental results show our scheme is practical and efficient for secure data sharing with multi-owner in cloud computing. We achieve fine-grained conditional dissemination over the ciphertext in cloud computing with attribute based CPRE. The ciphertext  is  firstly deployed with an initial access policy customized by data owner. Our proposed multi party access control mechanism allows the data co-owners to append new access policies to the ciphertext due to their privacy preferences. Hence, the ciphertext can be re-encrypted by the data disseminator only if the attributes satisfy enough access policies. We prove the correctness of our scheme, and conduct experiments to evaluate the performance at each phase to indicate the effectiveness of our scheme.\n");
      out.write("          </p>\n");
      out.write("      </div>\n");
      out.write("      <!-- end of main -->\n");
      out.write("      <div class=\"cl\">&nbsp;</div>\n");
      out.write("      <!-- footer -->\n");
      out.write("      <div id=\"footer\">\n");
      out.write("        <div class=\"footer-nav\">\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"TALogin.jsp\">TA Login</a></li>\n");
      out.write("            <li><a href=\"AdminLogin.jsp\">Admin</a></li>\n");
      out.write("            <li><a href=\"LoginForm.jsp\">Users Login</a></li>\n");
      out.write("            <li><a href=\"About.jsp\">About</a></li>\n");
      out.write("            <li><a href=\"Contact.jsp\">Contacts</a></li>\n");
      out.write("          </ul>\n");
      out.write("          <div class=\"cl\">&nbsp;</div>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"copy\">&copy; Copyright 2019<span>|</span>AMS. Design by <a href=\"http://chocotemplates.com\">ssi.com</a></p>\n");
      out.write("        <div class=\"cl\">&nbsp;</div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end of footer -->\n");
      out.write("    </div>\n");
      out.write("    <!-- end of container -->\n");
      out.write("  </div>\n");
      out.write("  <!-- end of shell -->\n");
      out.write("</div>\n");
      out.write("<!-- end of wrapper -->\n");
      out.write("</body>\n");
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
