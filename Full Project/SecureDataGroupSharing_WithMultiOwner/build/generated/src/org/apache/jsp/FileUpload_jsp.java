package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.*;
import java.security.SecureRandom;
import java.sql.*;

public final class FileUpload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            PreparedStatement ps;
        
     
            ResultSet rs;
            int fileid;
            String now = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
            String privateKey;            
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/db.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securecloud_multiowner","root","");
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            function fun1(job){\n");
      out.write("                if (window.ActiveXObject)\n");
      out.write("                    xhr = new ActiveXObject(\"Microsoft.XMLHttp\");\n");
      out.write("                else\n");
      out.write("                    xhr = new XMLHttpRequest();\n");
      out.write("\n");
      out.write("                xhr.onreadystatechange = op;\n");
      out.write("                xhr.open(\"GET\", \"getsecretkey.jsp\");\n");
      out.write("                xhr.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function op()\n");
      out.write("            {\n");
      out.write("                if (xhr.readyState == 4)\n");
      out.write("                {\n");
      out.write("                    data = xhr.responseText;\n");
      out.write("                    form1.filekey.value=data;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            ps = con.prepareStatement("select ifnull(max(fileid),0)+1 from UploadFiles");
            rs = ps.executeQuery();
            if (rs.next()) {
                fileid = rs.getInt(1);
            }
            rs.close();
            ps.close();
            
            ps=con.prepareStatement("select userid from Registration where usertype='Data Co-Owner'");
            rs=ps.executeQuery();
        
      out.write("\n");
      out.write("\n");
      out.write("        <form name=\"form1\" action=\"FileUploadProcess.jsp\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("            <table cellspacing=\"18\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th colspan=\"2\" style=\"font-size: x-large;\">File Uploading Form</th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>File Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"fileid\" value=\"");
      out.print(fileid);
      out.write("\" readonly /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Upload File</td>\n");
      out.write("                    <td><input type=\"file\" name=\"ufilename\" value=\"\" required /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Upload Date</td>\n");
      out.write("                    <td><input type=\"text\" name=\"uploaddate\" value=\"");
      out.print(now);
      out.write("\" required /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Encryption Key for File</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"filekey\" value=\"\" required/>\n");
      out.write("                        <input type=\"button\" name=\"b1\" value=\"Make File Encrypt Key\" onclick=\"fun1();\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select Co-Owner of File</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"co_owner\" size=\"2\" multiple>\n");
      out.write("                            ");

                                while(rs.next()){
                            
      out.write("\n");
      out.write("                            <option>");
      out.print(rs.getString(1));
      out.write("</option>\n");
      out.write("                            ");

                                }
                                rs.close();
                                ps.close();
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Access Policy for Users</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"policy\">\n");
      out.write("                            <option>--Select Policy--</option>\n");
      out.write("                            <option>Developer</option>\n");
      out.write("                            <option>Trainer</option>\n");
      out.write("                            <option>Designer</option>\n");
      out.write("                            <option>Analyzer</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" value=\"Upload to Cloud\" name=\"s1\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <h4 style=\"color: red;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
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
