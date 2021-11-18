<%-- 
    Document   : CheckUsers
    Created on : Nov 23, 2019, 6:11:00 PM
    Author     : Administrator
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
<style>
    td{
        text-align: center;
    }
</style>
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
              PreparedStatement ps1;
              ResultSet rs, rs1;
              int fileid;
              String filename,filekey;
              String policy1, policy3, policy4;
              int policy2, total;
              TreeMap<String, Integer> map1=new TreeMap<String, Integer>();
              TreeMap<String, Float> map2=new TreeMap<String, Float>();
          %>
          <%
              String fileid=request.getParameter("fileid");
              ps=con.prepareStatement("select filename,filekey from uploadfiles where fileid=?");
              ps.setString(1, fileid);
              rs=ps.executeQuery();
              if(rs.next()){
                  filename=rs.getString(1);
                  filekey=rs.getString(2);
              }
              rs.close();
              ps.close();                  
              
              
              ps=con.prepareStatement("select * from userattributes");
              rs=ps.executeQuery();
              while(rs.next()){
                  ps1=con.prepareStatement("select * from co_ownerpolicies where fileid=?");
                  ps1.setString(1, fileid);
                  rs1=ps1.executeQuery();
                  total=0;
                  while(rs1.next()){
                      policy1=rs1.getString(3);
                      policy2=rs1.getInt(4);
                      policy3=rs1.getString(5);
                      policy4=rs1.getString(6);
                      
                      if(policy1.equals("J2EE")){
                        if(rs.getString(2).equals("J2EE"))
                            total+=1;
                      }
                      else if(policy1.equals("Java")){
                        if(rs.getString(2).equals("J2EE") || rs.getString(2).equals("Java"))
                            total+=1;
                      }
                      
                      
                      if(rs.getInt(3)>=policy2)
                          total+=1;
                      
                      
                      if(rs.getString(4).equals(policy3))
                          total+=1;
                      
                      
                      if(policy4.equals("Excellent")){
                          if(rs.getString(5).equals("Excellent"))
                              total+=1;
                      }
                      else if(policy4.equals("Good")){
                          if(rs.getString(5).equals("Excellent") || rs.getString(5).equals("Good"))
                              total+=1;
                      }
                      else if(policy4.equals("Normal")){
                          if(rs.getString(5).equals("Excellent") || rs.getString(5).equals("Good") || rs.getString(5).equals("Normal"))
                              total+=1;
                      }                      
                  }
                  map1.put(rs.getString(1), total);
              }
              rs.close();
              ps.close();              
          %>
          <center>
          <table cellspacing="10">
              <tr>
                  <th colspan="4" style="font-size: 18px;">Eligible Data Accessor of <%=fileid%> : <%=filename%></th>
              </tr>
              <tr>
                  <th>File Id</th>
                  <th>File Name</th>
                  <th>Data Accessor(Eligible)</th>
                  <th>File Policy Fit(%)</th>
              </tr>
          <%
              
              Set<String> s1=map1.keySet();
              for(String user:s1){
                  int tot=map1.get(user);
                  float avg=((float)tot/8)*100;
                  map2.put(user, avg);
              }
              
              session.setAttribute("fileid", fileid);
              session.setAttribute("filename", filename);
              session.setAttribute("filekey", filekey);
              session.setAttribute("eligible_users", map2);
              
              s1=map2.keySet();
              for(String user:s1){
                  float avg=map2.get(user);
                  //out.println(user+"&nbsp;&nbsp;"+avg+"<br><br>");
                  if(avg>=75){
                      out.println("<tr>");
                      out.println("<td>"+fileid+"</td>");
                      out.println("<td>"+filename+"</td>");
                      out.println("<td>"+user+"</td>");
                      out.println("<td>"+avg+"%</td>");
                      out.println("</tr>");
                      
                  }
              }              
          %>
          </table>
          <br/>
          <form name="form1" action="StoreEligibleUsers.jsp" method="post">
              <input type="submit" name="s1" value="Store Eligible Users"/>
          </form>
          <br>
          <h3 style="color: blue;">${param.msg}</h3>
          <br/><br/><br/><br/><br/>
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