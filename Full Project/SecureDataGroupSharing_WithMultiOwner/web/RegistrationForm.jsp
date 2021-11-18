<%-- 
    Document   : RegistrationForm
    Created on : Nov 19, 2019, 6:33:21 PM
    Author     : Administrator
--%>


<%@page import="java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
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

        <script>
            function fun1(job){
                if (window.ActiveXObject)
                    xhr = new ActiveXObject("Microsoft.XMLHttp");
                else
                    xhr = new XMLHttpRequest();

                xhr.onreadystatechange = op;
                xhr.open("GET", "getusertype.jsp?job=" + job);
                xhr.send();

            }
            function op()
            {
                if (xhr.readyState == 4)
                {
                    data = xhr.responseText;
                    form1.usertype.value=data;
                }
            }
            
            function fun2(){
                var dob=form1.dob.value;
                var currdate=new Date();
                var dob_year=dob.substring(0,4);
                var curr_year=currdate.getFullYear();
                var age=curr_year-dob_year;
                form1.age.value=age;
            }

        </script>
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
          <li><a href="RegistrationForm.jsp">User Registration</a></li>
            <li><a href="AddUserAttributes.jsp">User Attributes</a></li>
            <li><a href="ViewUsers.jsp">View Users</a></li>
            <li><a href="DisseminateFiles.jsp">Disseminate Files</a></li>
            <li><a href="logout.jsp">Logout</a></li>
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
            String now;
        %>
        <%
            now = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
        %>
        <center>
        <form name="form1" action="RegistrationForm.jsp" method="post">
            <table cellspacing="11">
                <tr>
                    <th colspan="2" style="font-size: 20px;">Owner/Co-Owner/User Registration Form</th>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="custname" value="" required /></td>
                </tr>                        
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="Male" required/>Male
                        <input type="radio" name="gender" value="Female" required/>Female
                    </td>
                </tr>
                <tr>
                    <td>D.O.B</td>
                    <td><input type="text" name="dob" value="" required onblur="fun2();"/></td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td><input type="text" name="age" value="" required readonly/></td>
                </tr>                
                <tr>
                    <td>Address</td>
                    <td><textarea name="address" rows="5" cols="18"></textarea></td>
                </tr>
                <tr>
                    <td>E-Mail Id</td>
                    <td><input type="text" name="mailid" value="" required pattern=".+@[a-z]+\.[a-z]+"/></td>
                </tr>
                <tr>
                    <td>Mobile No</td>
                    <td><input type="text" name="mobileno" value="" required/></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td>
                        <select name="job" onchange="fun1(this.value)">
                            <option>--Select Job--</option>
                            <option value="Project Manager">Project Manager</option>
                            <option value="Project Leader">Project Leader</option>
                            <option value="Developer">Developer</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>User Type</td>
                    <td>
                        <input type="text" name="usertype" value="" required/>
                    </td>
                </tr>
                <tr>
                    <td>User Id</td>
                    <td><input type="text" name="userid" value="" required /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value="" required/></td>
                </tr>
                
                <tr>
                    <td>Registration Date</td>
                    <td><input type="text" name="regdate" value="<%=now%>" required readonly/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Register" name="s1" />
                        <input type="reset" value="Clear" name="s2" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><h4 style="color:red;">${param.msg}</h4></td>
                </tr>
            </table>
        </form>                            
        <%
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
        %>
        </center>
      </div>
      <!-- end of main -->
      <div class="cl">&nbsp;</div>
      <!-- footer -->
      <div id="footer">
        <div class="footer-nav">
          <ul>
            <li><a href="RegistrationForm.jsp">User Registration</a></li>
            <li><a href="AddUserAttributes.jsp">User Attributes</a></li>
            <li><a href="ViewUsers.jsp">View Users</a></li>
            <li><a href="DisseminateFiles.jsp">Disseminate Files</a></li>
            <li><a href="logout.jsp">Logout</a></li>
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