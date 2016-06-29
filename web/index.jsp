<%-- 
    Document   : index
    Created on : 29-jun-2016, 16:08:18
    Author     : Peter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="uploadfile.jsp" method="post" enctype="multipart/form-data">
        <h1>Upload file</h1>
        <input type="file" name="file"/>
        <input type="submit" value="enviar"/>
        </form>
    </body>
</html>
