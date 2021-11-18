<%-- 
    Document   : getusertype
    Created on : Nov 20, 2019, 1:24:22 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String job;
%>
<%
    job=request.getParameter("job");
    if(job.equals("Project Manager"))
        out.println("Data Owner");
    if(job.equals("Project Leader"))
        out.println("Data Co-Owner");
    if(job.equals("Developer"))
        out.println("Data User");
%>