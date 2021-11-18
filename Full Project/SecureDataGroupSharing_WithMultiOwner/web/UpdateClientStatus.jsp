<%-- 
    Document   : UpdateClientStatus
    Created on : Nov 20, 2019, 6:02:13 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.crypto.*,javax.crypto.spec.SecretKeySpec,sun.misc.*"%>
<%@ page import="java.io.*,java.util.*,java.text.*,java.security.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
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
        <%!            ResultSet rs;
            String userid;

            public String generateSecretKey() {
                SecureRandom r = new SecureRandom();
                String s1 = "";
                int n = r.nextInt();
                s1 = Integer.toHexString(n);
                return s1;
            }
        %>
        <%
            if (request.getParameter("userid") != null) {
                userid = request.getParameter("userid");
                session.setAttribute("userid", userid);
            } else {
                userid = session.getAttribute("userid").toString();
            }
            ps = con.prepareStatement("select * from Registration where userid=?");
            ps.setString(1, userid);
            rs = ps.executeQuery();
            if (rs.next()) {
                String mailid = rs.getString(6);
        %>
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
                            <li><a href="ApproveClients.jsp">View & Verify Clients</a></li>
                            <li><a href="ViewApprovedClients.jsp">View Approved Clients</a></li>
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
                        <center>
                            <form name="form1" action="UpdateClientStatus.jsp" method="post">
                                <table border="0" cellspacing="18">
                                    <tr>
                                        <th colspan="2" style="font-size: x-large;">Update Cloud Client Status</th>
                                    </tr>
                                    <tr>
                                        <th>Name</th>
                                        <td><%=rs.getString(1)%></td>
                                    </tr>
                                    <tr>
                                        <th>Gender</th>
                                        <td><%=rs.getString(2)%></td>
                                    </tr>
                                    <tr>
                                        <th>D.O.B</th>
                                        <td><%=rs.getString(3)%></td>
                                    </tr>
                                    <tr>
                                        <th>Age</th>
                                        <td><%=rs.getString(4)%></td>
                                    </tr>
                                    <tr>
                                        <th>Address</th>
                                        <td><%=rs.getString(5)%></td>
                                    </tr>
                                    <tr>
                                        <th>Mail Id</th>
                                        <td>
                                            <%=mailid%><input type="hidden" name="mailid" value="<%=mailid%>"/> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Mobile No</th>
                                        <td><%=rs.getString(7)%></td>
                                    </tr>
                                    <tr>
                                        <th>User Id</th>
                                        <td><%=userid%></td>
                                    </tr>
                                    <tr>
                                        <th>Approval Status</th>
                                        <td>
                                            <input type="radio" name="acc_status" value="Accepted"/>Accept
                                            <input type="radio" name="acc_status" value="Rejected"/>Reject
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><input type="submit" name="s1" value="Update & Send Key"/></td>
                                    </tr>
                                </table>
                            </form>
                            <%
                                }
                                rs.close();
                                ps.close();
                            %>
                            <%
                                if (request.getParameter("s1") != null) {
                                    ps = con.prepareStatement("update Registration set status=? where userid=?");
                                    ps.setString(1, request.getParameter("acc_status"));
                                    ps.setString(2, userid);
                                    ps.executeUpdate();
                                    ps.close();


                                    if (request.getParameter("acc_status").equals("Accepted")) {
                                        String secretKey = generateSecretKey();
                                        String mailId = request.getParameter("mailid");

                                        ps = con.prepareStatement("update Registration set secretkey=? where userid=?");
                                        ps.setString(1, secretKey);
                                        ps.setString(2, userid);
                                        ps.executeUpdate();
                                        ps.close();


                                        //Code Started for sending key to Mail ID
                                        /*String data = "Your Secret Key is: " + secretKey;
                                         boolean sessionDebug = true;
                                         String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
                                         String host = "smtp.gmail.com";
                                         String from = "customerproject404@gmail.com";
                                         String user = from;
                                         String pwd = "ssiaptech";
                                         String to = mailId;
                                         String subject = "secret key";
                                         String body = data;
                                         Properties props = System.getProperties();

                                         props.put("mail.host", host);
                                         props.put("mail.transport.protocol", "smtp");
                                         props.put("mail.smtp.auth", "true");
                                         props.put("mail.smtp.", "true");
                                         props.put("mail.smtp.port", "465");
                                         props.put("mail.smtp.socketFactory.fallback", "false");
                                         props.put("mail.smtp.socketFactory.class", SSL_FACTORY);

                                         Session mailSession = Session.getDefaultInstance(props, null);
                                         mailSession.setDebug(sessionDebug);
                                         Message msg = new MimeMessage(mailSession);
                                         msg.setFrom(new InternetAddress(from));
                                         InternetAddress[] address = {new InternetAddress(to)};
                                         msg.setRecipients(Message.RecipientType.TO, address);
                                         msg.setSubject(subject);
                                         msg.setContent(body, "text/html");
                                         Transport transport = mailSession.getTransport("smtp");
                                         transport.connect(host, user, pwd);
                                         transport.sendMessage(msg, msg.getAllRecipients());*/
                                        //Code Finished for sending key to Mail Id
                                    }



                                    out.println("<h4 style='color:blue;'>User Status Updated & Key Sent to Approved User!!</h4>");
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
                                <li><a href="ApproveClients.jsp">View & Verify Clients</a></li>
                                <li><a href="ViewApprovedClients.jsp">View Approved Clients</a></li>
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
