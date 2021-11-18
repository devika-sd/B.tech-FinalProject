package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.*;
import java.sql.*;

public final class RegistrationForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            PreparedStatement ps;
        
   
            String now;
        
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
      out.write("                xhr.open(\"GET\", \"getusertype.jsp?job=\" + job);\n");
      out.write("                xhr.send();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function op()\n");
      out.write("            {\n");
      out.write("                if (xhr.readyState == 4)\n");
      out.write("                {\n");
      out.write("                    data = xhr.responseText;\n");
      out.write("                    form1.usertype.value=data;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function fun2(){\n");
      out.write("                var dob=form1.dob.value;\n");
      out.write("                var currdate=new Date();\n");
      out.write("                var dob_year=dob.substring(0,4);\n");
      out.write("                var curr_year=currdate.getFullYear();\n");
      out.write("                var age=curr_year-dob_year;\n");
      out.write("                form1.age.value=age;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            now = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
        
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <form name=\"form1\" action=\"RegistrationForm.jsp\" method=\"post\">\n");
      out.write("            <table cellspacing=\"11\" align=\"center\" width=\"55%\">\n");
      out.write("                <tr>\n");
      out.write("                    <th colspan=\"2\" style=\"font-size: 20px;\">Owner/Co-Owner/User Registration Form</th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"custname\" value=\"\" required /></td>\n");
      out.write("                </tr>                        \n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Male\" required/>Male\n");
      out.write("                        <input type=\"radio\" name=\"gender\" value=\"Female\" required/>Female\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>D.O.B</td>\n");
      out.write("                    <td><input type=\"text\" name=\"dob\" value=\"\" required onblur=\"fun2();\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Age</td>\n");
      out.write("                    <td><input type=\"text\" name=\"age\" value=\"\" required readonly/></td>\n");
      out.write("                </tr>                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><textarea name=\"address\" rows=\"5\" cols=\"18\"></textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>E-Mail Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"mailid\" value=\"\" required pattern=\".+@[a-z]+\\.[a-z]+\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Mobile No</td>\n");
      out.write("                    <td><input type=\"text\" name=\"mobileno\" value=\"\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Designation</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"job\" onchange=\"fun1(this.value)\">\n");
      out.write("                            <option>--Select Job--</option>\n");
      out.write("                            <option value=\"Project Manager\">Project Manager</option>\n");
      out.write("                            <option value=\"Project Leader\">Project Leader</option>\n");
      out.write("                            <option value=\"Developer\">Developer</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>User Type</td>\n");
      out.write("                    <td><input type=\"text\" name=\"usertype\" value=\"\" required /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>User Id</td>\n");
      out.write("                    <td><input type=\"text\" name=\"userid\" value=\"\" required /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"password\" value=\"\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Registration Date</td>\n");
      out.write("                    <td><input type=\"text\" name=\"regdate\" value=\"");
      out.print(now);
      out.write("\" required readonly/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" value=\"Register\" name=\"s1\" />\n");
      out.write("                        <input type=\"reset\" value=\"Clear\" name=\"s2\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"><h4 style=\"color:red;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>                            \n");
      out.write("        ");

            if (request.getParameter("s1") != null) {
                String name = request.getParameter("custname");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                int age = Integer.parseInt(request.getParameter("age"));
                String address = request.getParameter("address");
                String mailid = request.getParameter("mailid");
                String mobileno = request.getParameter("mobileno");
                String job=request.getParameter("job");
                String usertype=request.getParameter("usertype");
                String uid = request.getParameter("userid");
                String pwd = request.getParameter("password");
                String regdate = request.getParameter("regdate");

                ps = con.prepareStatement("insert into Registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, gender);
                ps.setString(3, dob);
                ps.setInt(4, age);
                ps.setString(5, address);
                ps.setString(6, mailid);
                ps.setString(7, mobileno);
                ps.setString(8, job);
                ps.setString(9, usertype);
                ps.setString(10, uid);
                ps.setString(11, pwd);
                ps.setString(12, regdate);
                ps.setString(13, "Pending");
                ps.setString(14, "");
                ps.executeUpdate();
                ps.close();
                response.sendRedirect("RegistrationForm.jsp?msg=Given Info Registered.");
            }
        
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
