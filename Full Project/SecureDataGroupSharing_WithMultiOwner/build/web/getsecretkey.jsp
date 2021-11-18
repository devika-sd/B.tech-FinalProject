<%-- 
    Document   : getsecretkey
    Created on : Nov 21, 2019, 11:46:34 AM
    Author     : Administrator
--%>

<%@page import="java.security.SecureRandom" contentType="text/html" pageEncoding="UTF-8"%>
<%!
    public String generatePrivateKey() {
        SecureRandom r = new SecureRandom();
        String s1 = "";
        int n = r.nextInt();
        s1 = Integer.toHexString(n);
        return s1;
    }
%>
<%
    String filekey = generatePrivateKey();
    out.println(filekey);
%>
