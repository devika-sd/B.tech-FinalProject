<%-- 
    Document   : DownloadProcess
    Created on : Nov 25, 2019, 3:13:26 PM
    Author     : Administrator
--%>

<%@page import="java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
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
            ServletOutputStream sout;
            String fileid, userid, filekey;
            String filePath, fileName;
            FileInputStream fin;
            int c;
        %>
        <%
            fileid=request.getParameter("t1");
            fileName=request.getParameter("t2");
            userid=session.getAttribute("userid").toString();
            filekey=request.getParameter("t3");
            
            ps=con.prepareStatement("select filekey from fileaccessors where fileid=? and dataaccessor=?");
            ps.setString(1, fileid);
            ps.setString(2, userid);
            rs=ps.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(filekey)){
                    sout=response.getOutputStream();
                    filePath=application.getRealPath("sharing_files_original")+"\\"+fileName;
                    
                    response.setHeader("Content-Disposition", "attachment;filename="+fileName);
                    fin=new FileInputStream(filePath);
                    while((c=fin.read())!=-1)
                        sout.write(c);
                    fin.close();
                    sout.close();
                }
                else{
                    response.sendRedirect("Download.jsp?msg=Invalid FileKey!!");
                }
            }
        %>
    </body>
</html>
