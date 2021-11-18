<%-- 
    Document   : StoreEligibleUsers
    Created on : Nov 23, 2019, 7:59:56 PM
    Author     : Administrator
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            ResultSet rs;
            String fileid, filename, filekey, user;
            TreeMap<String, Float> map;
        %>
        <%
            fileid=session.getAttribute("fileid").toString();
            filename=session.getAttribute("filename").toString();
            filekey=session.getAttribute("filekey").toString();
            map=(TreeMap<String, Float>)session.getAttribute("eligible_users");
            Set<String> set=map.keySet();
            for(String user:set){
                float avg=map.get(user);
                if(avg>=60){
                    ps=con.prepareStatement("select * from FileAccessors where fileid=? and dataaccessor=?");
                    ps.setString(1, fileid);
                    ps.setString(2, user);
                    rs=ps.executeQuery();
                
                    if(!rs.next()){
                        ps = con.prepareStatement("insert into FileAccessors values(?,?,?,?)");
                        ps.setString(1, fileid);
                        ps.setString(2, filename);
                        ps.setString(3, filekey);
                        ps.setString(4, user);
                        ps.executeUpdate();
                        ps.close();
                    }
                }
            }
            response.sendRedirect("CheckUsers.jsp?msg=Users who are satistied the max.policies to access the file.");
                  
        %>
    </body>
</html>
