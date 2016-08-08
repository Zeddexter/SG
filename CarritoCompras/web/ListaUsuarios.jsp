<%-- 
    Document   : ListaUsuarios
    Created on : 07/08/2016, 10:20:21 PM
    Author     : usuario
--%>

<%@page import="Controlador.Usuario"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/WEB-INF/PAGES/TEMPLATE.jsp">
        <jsp:param name="content" value= "TEST"/>
        <jsp:param name="title" value="Concesionario"/>
    </jsp:include>    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="panel panel-primary" >
            <div class="panel panel-heading" >Usuarios</div>
            <div class="panel panel-body" >
                <a href="Usuarios.jsp" class="btn btn-primary" >Crear nuevo</a>
                <table  class="table">
                    <thead>
                        <tr>
                            <th>
                                Nombres
                            </th>
                            <th>
                                Apellidos
                            </th>
                            <th>
                                Usuario
                            </th>
                            <th>
                                Email
                            </th>
                            <th>
                                
                            </th>
                        </tr>
                        <%
                                            Vector v = new Vector();
                                            Usuario usuario = new Usuario();
                                            v = usuario.listaUsuarios();
                                            
                                            if (v.size() > 0) {
                                                for (int i = 0; i < v.size(); i++) {
                                                    usuario = (Usuario) v.get(i);
                                                    out.print("<tr><td>" + usuario.getUsuario_nombre() + "</td><td>" + usuario.getUsuario_apellido() + "</td><td>"+usuario.getUsuario_user()+ "</td><td>"+usuario.getEmail()+"</td></tr>" );
                                                }
                                            }
                                    %>
                    </thead>
                </table>
            </div>
        </div>
    </body>
</html>
