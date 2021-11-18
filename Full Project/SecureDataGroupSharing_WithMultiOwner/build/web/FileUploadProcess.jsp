<%-- 
    Document   : FileUploadProcess
    Created on : Nov 21, 2019, 10:45:49 AM
    Author     : Administrator
--%>

<%@page import="java.security.SecureRandom"%>
<%@page import="groupsharing.SymmetricEncryption" %>
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
            InputStream in;
            ByteArrayOutputStream bout;
            FileOutputStream fout;
            byte[] buffer;
            String contentType, content;
            String co_owners, user_policy, co_owner1, co_owner2;
            int c;
            String fileId, user, subject, fileName, uploadedDate, fileKey;

            public String getParameterValue(String content, String paramName) {
                String paramValue = "";
                int startIndex = content.indexOf(paramName) + paramName.length() + 3;
                int endIndex = content.indexOf("--", startIndex);
                paramValue = content.substring(startIndex, endIndex).trim();
                return paramValue;
            }

        %>

        <%
            user = session.getAttribute("userid").toString();

            contentType = request.getContentType();
            in = request.getInputStream();
            bout = new ByteArrayOutputStream();

            while ((c = in.read()) != -1) {
                bout.write(c);
            }
            buffer = bout.toByteArray();
            content = new String(buffer);
            bout.close();


            // Start of Code for getting the uploaded file name            
            String saveFile = content.substring(content.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            fileName = saveFile;     //this is uploaded file name       
            // End of Code for getting the uploaded file name

            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;

            // Start of Code for extracting the index of content
            pos = content.indexOf("filename=\"");
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;

            int boundaryLocation = content.indexOf(boundary, pos) - 4;
            int startPos = pos;
            int endPos = boundaryLocation;
            //End of Code for extracting the index of content


            // Code for creating a new file with the same name and writing the content in new file
            File f1 = new File(application.getRealPath("sharing_files"));
            File f2 = new File(application.getRealPath("sharing_files_original"));


            //Start of Code for getting parameter values requested by client
            fileId = getParameterValue(content, "fileid");
            uploadedDate = getParameterValue(content, "uploaddate");
            fileKey = getParameterValue(content, "filekey");
            co_owner1 = getParameterValue(content, "co_owner");
            user_policy = getParameterValue(content, "policy");


            String paramValue = "";
            int startIndex = content.lastIndexOf("co_owner") + "co_owner".length() + 3;
            int endIndex = content.indexOf("--", startIndex);
            paramValue = content.substring(startIndex, endIndex).trim();
            co_owner2 = paramValue;

            
             fout = new FileOutputStream(f1.getPath() + "\\" + fileName);
            
             String fileContent=new String(buffer, startPos, endPos-startPos);
             String encFileContent=SymmetricEncryption.encrypt(fileContent, fileKey);
            
             fout.write(encFileContent.getBytes());
             fout.flush();
             fout.close();
            
             fout = new FileOutputStream(f2.getPath() + "\\" + fileName);
             fout.write(buffer, startPos, endPos-startPos);
             fout.flush();
             fout.close();
            
             ps=con.prepareStatement("insert into UploadFiles values(?,?,?,?,?,?)");
             ps.setString(1, fileId);
             ps.setString(2, fileName);
             ps.setString(3, user);
             ps.setString(4, uploadedDate);
             ps.setString(5, fileKey);
             ps.setString(6, user_policy);
             ps.executeUpdate();
             ps.close();
             
             ps=con.prepareStatement("insert into Co_OwnerFile values(?,?)");
             ps.setString(1, fileId);
             ps.setString(2, co_owner1);
             ps.executeUpdate();
             ps.close();
             
             ps=con.prepareStatement("insert into Co_OwnerFile values(?,?)");
             ps.setString(1, fileId);
             ps.setString(2, co_owner2);
             ps.executeUpdate();
             ps.close();
             

            response.sendRedirect("FileUpload.jsp?msg=File Uploaded into the Cloud!!");
            //out.println("<script>alert('File Sent to the User!!');</script>");            
%>

    </body>
</html>
