<%-- 
    Document   : Respuesta
    Created on : 07/08/2016, 05:09:16 PM
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
            <div class="panel panel-primary" >
                <div class="panel panel-heading" >Mensaje</div>
                <div class="panel panel-body" >
                    <section><h3><%= request.getAttribute("Res")%></h3></section>
                    <a href="ListaUsuarios.jsp" class="btn btn-primary">Regresar</a>
                </div>
            </div>
    </body>
</html>
