<%-- 
    Document   : TEMPLATE
    Created on : 18/07/2016, 05:21:47 PM
    Author     : usuario
--%>
<%@page import="Controlador.Opciones"%>
<%@page import="javax.xml.crypto.dsig.XMLObject"%>
<%@page import="java.util.Vector"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" 
              type="image/png" 
              href="favicon2.ico">
        <title>${param.title}</title>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <%--<link rel="stylesheet" type="text/css" href="${pageContext.request}/resources/style.css"/>---%>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.jsp">Gestión del Concesionario</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav" id="login_user_master">
                            <li class="active"><a href="index.jsp">Inicio</a></li>
                            <%-- <li class="dropdown"> --%>
                                <%--    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Configuración<span class="caret"></span></a>--%>
                                <%--<ul class="dropdown-menu" role="menu">--%>
                                    <%
                                        if (((Vector)session.getAttribute("opciones") != null)) {
                                            Vector v = new Vector();
                                            Opciones op = new Opciones();
                                            v = (Vector) session.getAttribute("opciones");
                                            
                                            if (v.size() > 0) {
                                                out.print("<li class='dropdown'>");
                                            out.print("<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Configuración<span class='caret'></span></a>");
                                            out.print(" <ul class='dropdown-menu' role='menu'>");
                                                for (int i = 0; i < v.size(); i++) {
                                                    op = (Opciones) v.get(i);
                                                    out.print("<li><a href='" + op.getNombre() + "'>" + op.getDescripcion() + " </a></li>");
                                                }
                                            out.print("</ul></li>");
                                            }
                                        }                                       // do whatever you need to do with xmlobj
                                    %>
                                    <%-- <li class="divider"></li> --%>
                                
                        </ul>
                        <ul class="nav navbar-nav navbar-right">

                            <%
                                if ((session.getAttribute("usuario") == null) || (session.getAttribute("usuario") == "")) {
                            %>
                            <li  id="login_user" class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><b>Iniciar Sesión</b> <span class="caret"></span></a>
                                <ul id="login-dp" class="dropdown-menu">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-12">	
                                                Acceso al Sistema
                                                <form  name="frmPrincipal" method="post" action="SVerificarUsuario" class="form" accept-charset="UTF-8" id="login-nav">
                                                    <div class="form-group">
                                                        <label class="sr-only"  >Usuario</label>
                                                        <input type="text" name="txtUsuario" id="txtUsuario"  class="form-control" id="exampleInputEmail2" placeholder="Usuario" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="sr-only" >Contraseña:</label>
                                                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary btn-block">Acceder</button>
                                                    </div>

                                                </form>
                                            </div>

                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <%} else {
                            %>
                            <li><p class="navbar-text">
                                    Bienvenido <%= session.getAttribute("usuario")%>
                                    <a href='logout.jsp'>Desconectarse</a>
                                </p></li>
                                <%
                                    }
                                %>         
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header>
        <%--<jsp:include page="/WEB-INF/PAGES/Header.jsp"/>--%>
        <jsp:include page="/WEB-INF/PAGES/footer.jsp"/>
    </body>
</html>
