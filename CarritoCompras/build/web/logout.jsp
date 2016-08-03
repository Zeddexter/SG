<%-- 
    Document   : logout
    Created on : 21/07/2016, 11:52:10 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
    </body>
</html>
