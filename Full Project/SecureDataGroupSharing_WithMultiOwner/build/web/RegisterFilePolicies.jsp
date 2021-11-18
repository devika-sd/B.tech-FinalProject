<%-- 
    Document   : RegisterFilePolicies
    Created on : Nov 23, 2019, 3:14:46 PM
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
              ResultSet rs;
              int fileid;
              String filename, owner, udate,owner_policy;
          %>
          
          <%
              if(request.getParameter("fileid")!=null){
                fileid=Integer.parseInt(request.getParameter("fileid"));
                session.setAttribute("fileid", fileid);
              }
              else{
                  fileid=Integer.parseInt(session.getAttribute("fileid").toString());
              }
              
              ps=con.prepareStatement("select u.fileid,u.filename,u.userid,u.uploadeddate,u.accesspolicy from UploadFiles u,Co_Ownerfile c where c.co_ownerid=? and u.fileid=c.fileid and c.fileid=?");
              ps.setString(1, session.getAttribute("userid").toString());
              ps.setInt(2, fileid);
              rs=ps.executeQuery();
              if(rs.next()){
                  filename=rs.getString(2);
                  owner=rs.getString(3);
                  udate=rs.getString(4);
                  owner_policy=rs.getString(5);
              }
              rs.close();
              ps.close();
          %>
          <center>
          <form name="form1" method="post" action="RegisterFilePolicies.jsp">
              <table cellspacing="10">
                  <tr>
                      <th colspan="2" style="font-size: 20px;">Add File Policies by Co-Owner</th>
                  </tr>
                  <tr>
                      <td>File Id</td>
                      <td><input type="text" name="fileid" value="<%=fileid%>" readonly/></td>
                  </tr>
                  <tr>
                      <td>File Name</td>
                      <td><input type="text" name="filename" value="<%=filename%>" readonly/></td>
                  </tr>
                  <tr>
                      <td>File Owner</td>
                      <td><input type="text" name="fileowner" value="<%=owner%>" readonly/></td>
                  </tr>
                  <tr>
                      <td>Uploaded Date</td>
                      <td><input type="text" name="upload_date" value="<%=udate%>" readonly/></td>
                  </tr>
                  <tr>
                      <td>File Policy1(Technology)</td>
                      <td>
                        <select name="policy1">
                            <option>Java</option>
                            <option>J2EE</option>
                            <option>PHP</option>
                            <option>DotNet</option>
                            <option>Python</option>
                            <option>Android</option>
                        </select>
                    </td>
                  </tr>
                  <tr>
                      <td>File Policy2(Experience in Years)</td>
                      <td><input type="text" name="policy2"/></td>
                  </tr>
                  <tr>
                      <td>File Policy3(Domain)</td>
                      <td>
                          <select name="policy3">
                            <option>Cloud Computing</option>
                            <option>Data Mining</option>
                            <option>Image Processing</option>
                            <option>Machine Learning</option>
                            <option>Networking</option>
                        </select>
                      </td>
                  </tr>
                  <tr>
                      <td>File Policy4(Efficiency)</td>
                      <td>
                        <select name="policy4">
                            <option>Normal</option>
                            <option>Good</option>
                            <option>Excellent</option>
                        </select>
                    </td>
                  </tr>
                  <tr>
                      <td></td>
                      <td><input type="submit" name="s1" value="Submit"</td>
                  </tr>
              </table>
          </form>
          <%
              if(request.getParameter("s1")!=null){
                  String policy1=request.getParameter("policy1");
                  String policy2=request.getParameter("policy2");
                  String policy3=request.getParameter("policy3");
                  String policy4=request.getParameter("policy4");
                  
                  ps=con.prepareStatement("insert into Co_OwnerPolicies values(?,?,?,?,?,?)");
                  ps.setString(1, session.getAttribute("fileid").toString());
                  ps.setString(2, session.getAttribute("userid").toString());
                  ps.setString(3, policy1);
                  ps.setString(4, policy2);
                  ps.setString(5, policy3);
                  ps.setString(6, policy4);
                  ps.executeUpdate();
                  ps.close();
                  out.println("<h3 style='color: blue;'>File Policy Updated!!</h3>");
              }
          %>
          </center>
          <br/>
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
