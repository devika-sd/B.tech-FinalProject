<%-- 
    Document   : logout
    Created on : Nov 22, 2019, 12:34:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("userid").toString().equals("Admin")){
                session.invalidate();
                response.sendRedirect("AdminLogin.jsp");
            }
            else if(session.getAttribute("userid").toString().equals("tpa")){
                session.invalidate();
                response.sendRedirect("TALogin.jsp");
            }
            else{
                session.invalidate();
                response.sendRedirect("LoginForm.jsp");
            }
        %>
    </body>
</html>
