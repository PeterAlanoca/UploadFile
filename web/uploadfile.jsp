<%-- 
    Document   : uploadfile
    Created on : 29-jun-2016, 16:16:10
    Author     : Peter
--%>

<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Subiendo Archivo</h1>
        
        <%
            String archivourl = "C:\\Users\\Peter\\Documents\\NetBeansProjects\\Archivos\\web\\file";
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(1024);
            factory.setRepository(new File(archivourl));
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List<FileItem> partes = upload.parseRequest(request);
                for(FileItem items: partes){
                    File file = new File(archivourl, items.getName());
                    items.write(file);
                }
                out.print("subio correctamente");
            } catch (Exception e){
                out.print(e);
            }
        %> 
    </body>
</html>
