<%-- 
    Document   : LoginForm
    Created on : Nov 19, 2019, 6:27:50 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Secured Cloud</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0">
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!--
<link href='http://fonts.googleapis.com/css?family=Raleway:400,900,800,700,600,500,300,200,100' rel='stylesheet' type='text/css'>
-->
<script src="js/jquery-1.8.0.min.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.custom.js"></script>
<![endif]-->
<script src="js/jquery.carouFredSel-5.5.0-packed.js"></script>
<script src="js/functions.js"></script>
</head>
<body>
<!-- wrapper -->
<div id="wrapper">
  <!-- shell -->
  <div class="shell">
    <!-- container -->
    <div class="container">
      <!-- header -->
      <header id="header">
        <h1 id="logo"><a href="#">Secure Cloud Computing</a></h1>
        <!-- search -->
        <div class="search">
          <form action="#" method="post">
            <input type="text" class="field" value="keywords here ..." title="keywords here ...">
            <input type="submit" class="search-btn" value="">
            <div class="cl">&nbsp;</div>
          </form>
        </div>
        <!-- end of search -->
        <div class="cl">&nbsp;</div>
      </header>
      <!-- end of header -->
      <!-- navigaation -->
      <nav id="navigation"> <a href="#" class="nav-btn">HOME<span></span></a>
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="TALogin.jsp">TA Login</a></li>
          <li><a href="AdminLogin.jsp">Admin Login</a></li>
          <li><a href="LoginForm.jsp">Users Login</a></li>
          <li><a href="About.jsp">About</a></li>
          <li><a href="Contact.jsp">Contacts</a></li>
        </ul>
        <div class="cl">&nbsp;</div>
      </nav>
      <!-- end of navigation -->
      <!-- slider-holder -->
      <div class="slider-holder">
        <!-- slider -->
        <div class="slider">
          <div class="socials"> <a href="#" class="facebook-ico">facebook-ico</a> <a href="#" class="twitter-ico">twitter-ico</a> <a href="#" class="skype-ico">skype-ico</a> <a href="#" class="rss-ico">rss-ico</a>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="arrs"> <a href="#" class="prev-arr"></a> <a href="#" class="next-arr"></a> </div>
          <ul>
            <li id="img1">
              <div class="slide-cnt">
                <h4></h4>
                <h4>Secure Cloud Computing in Group Sharing</h4>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Secure Data Group Sharing with Multi-Owner in Cloud</p>
                
              </div>
                <img src="css/images/mac-img.png" alt="" style="width: 100px; height: 65px;"> </li>
            
          </ul>
        </div>
        <!-- end of slider -->
        <!-- thumbs -->
        
        <!-- end of thumbs -->
      </div>
      <!-- main -->
      <div class="main">
        <div class="featured">
          <h4>Welcome to <strong>Secure Cloud Computing.</strong> </h4>
          <a href="#" class="blue-btn">GET IN TOUCH</a> </div>
          <%!     
            ResultSet rs;
        %>
        <center>
        <form name="form1" action="LoginForm.jsp" method="post">
            <table cellspacing="18" align="center">
                <tr>
                    <th colspan="2" style="font-size: x-large">Login Form</th>
                </tr>
                <tr>
                    <td>User Id</td>
                    <td><input type="text" name="t1" value="" required /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="t2" value="" required /></td>
                </tr>
                <tr>
                    <td>User Type</td>
                    <td>
                        <select name="usertype">
                            <option value="Data Owner">Data Owner</option>
                            <option value="Data Co-Owner">Data Co-Owner</option>
                            <option value="Data User">Data User</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login" name="s1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><h4 style="color:red;">${param.msg}</h4></td>
                </tr>
            </table>
        </form>                            
        <%
            if (request.getParameter("t1") != null) {
                String uid = request.getParameter("t1");
                String pwd = request.getParameter("t2");
                String userType = request.getParameter("usertype");
                
                ps = con.prepareStatement("select * from Registration where userid=? and password=? and usertype=? and status='Accepted' ");
                ps.setString(1, uid);
                ps.setString(2, pwd);
                ps.setString(3, userType);
                rs = ps.executeQuery();
                if (rs.next()) {
                    session.setAttribute("userid", uid);
                    session.setAttribute("usertype", userType);
                    response.sendRedirect("SecretKeyVerification.jsp");
                }
                else {
                    out.println("<span style='color:red;'>Unauthorized Client Login/Your status yet to be approved.</span>");
                }
                rs.close();
                ps.close();
            }
        %>
        </center>
      </div>
      <!-- end of main -->
      <div class="cl">&nbsp;</div>
      <!-- footer -->
      <div id="footer">
        <div class="footer-nav">
          <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="TALogin.jsp">TA Login</a></li>
            <li><a href="AdminLogin.jsp">Admin</a></li>
            <li><a href="LoginForm.jsp">Users Login</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Contact.jsp">Contacts</a></li>
          </ul>
          <div class="cl">&nbsp;</div>
        </div>
        <p class="copy">&copy; Copyright 2019<span>|</span>AMS. Design by <a href="http://chocotemplates.com">ssi.com</a></p>
        <div class="cl">&nbsp;</div>
      </div>
      <!-- end of footer -->
    </div>
    <!-- end of container -->
  </div>
  <!-- end of shell -->
</div>
<!-- end of wrapper -->
</body>
</html>
