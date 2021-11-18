<%-- 
    Document   : AddFilePolicies
    Created on : Nov 22, 2019, 6:02:09 PM
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
            <li><a href="ViewFilesByCo_Owner.jsp">View Files</a></li>
            <li><a href="AddFilePolicies.jsp">Add File Policies</a></li>
            <li><a href="ViewDownloadUsers.jsp">View Download Users</a></li>
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
              PreparedStatement ps1;
              ResultSet rs, rs1;
              int fileid;
          %>
          <center>
          <table cellspacing="10">
              <tr>
                  <th colspan="6" style="font-size: 20px;">View & Set Policies to Files by Data Co-Owner</th>
              </tr>
              <tr>
                  <th>File Id</th>
                  <th>File Name</th>
                  <th>File Owner</th>
                  <th>Uploaded Date</th>
                  <th>Access Policy By Owner</th>
                  <th>Adding File Policies</th>
              </tr>
          <%
              ps=con.prepareStatement("select u.fileid,u.filename,u.userid,u.uploadeddate,u.accesspolicy from UploadFiles u,Co_Ownerfile c where c.co_ownerid=? and u.fileid=c.fileid");
              ps.setString(1, session.getAttribute("userid").toString());
              rs=ps.executeQuery();
              while(rs.next()){
                  fileid=rs.getInt(1);
                  
                  ps1=con.prepareStatement("select * from Co_OwnerPolicies where fileid=? and co_ownerid=?");
                  ps1.setInt(1, fileid);
                  ps1.setString(2, session.getAttribute("userid").toString());
                  rs1=ps1.executeQuery();
                  if(!rs1.next()){
          %>
          <tr>
              <td style="text-align: center;"><%=fileid%></td>
              <td style="text-align: center;"><%=rs.getString(2)%></td>
              <td style="text-align: center;"><%=rs.getString(3)%></td>
              <td style="text-align: center;"><%=rs.getString(4)%></td>
              <td style="text-align: center;"><%=rs.getString(5)%></td>
              <td style="text-align: center;"><a href="RegisterFilePolicies.jsp?fileid=<%=fileid%>">Add Policies</a></td>
          </tr>
          <%
                  }
              }
              rs.close();
              ps.close();
          %>
          </table>
          <br/><br/><br/><br/><br/><br/>
      </center>
      </div>
      <!-- end of main -->
      <div class="cl">&nbsp;</div>
      <!-- footer -->
      <div id="footer">
        <div class="footer-nav">
          <ul>
              <li><a href="ViewFilesByCo_Owner.jsp">View Files</a></li>
            <li><a href="AddFilePolicies.jsp">Add File Policies</a></li>
            <li><a href="ViewDownloadUsers.jsp">View Download Users</a></li>
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