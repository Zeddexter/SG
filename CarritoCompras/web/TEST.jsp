<%-- 
    Document   : TEST
    Created on : 18/07/2016, 05:39:31 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <jsp:include page="/WEB-INF/PAGES/TEMPLATE.jsp">
        <jsp:param name="content" value= "TEST"/>
        <jsp:param name="title" value="Concesionario"/>
    </jsp:include>
    
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
