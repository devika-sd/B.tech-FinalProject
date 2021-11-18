<%-- 
    Document   : db
    Created on : Nov 20, 2019, 10:49:15 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securecloud_multiowner","root","");
        %>
    </body>
</html>
