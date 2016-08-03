<%-- 
    Document   : Usuarios
    Created on : 26/07/2016, 12:11:18 AM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <jsp:include page="/WEB-INF/PAGES/TEMPLATE.jsp">
        <jsp:param name="content" value= "TEST"/>
        <jsp:param name="title" value="Concesionario"/>
    </jsp:include> 
    <body>
        <div class="panel panel-primary">
            <div class="panel panel-heading">
                Registro de Usuarios 
            </div>
            <div class="panel panel-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <form  class="well form-horizontal" action="RegistrarUsuario" method="post"  id="contact_form">
                                <legend>Usuarios</legend>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Código</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                           
                                            <input  name="txtcodUsuario" id="txtcodUsuario" class="form-control" readonly="true"  type="text">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Nombres</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input  name="txtNombres" placeholder="Nombres" class="form-control" required="true"  type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Apellidos</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="txtApellidos" placeholder="Apellidos" class="form-control" required="true" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Usuario</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input name="txtUsuario" placeholder="Usuario" class="form-control" required="true"  type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Contraseña</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input  name="txtClave" placeholder="Contraseña" class="form-control" required="true"  type="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Confirmar Contraseña</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input  name="txtclaveconfirma" placeholder="Confirmar Contraseña" required="true" class="form-control"  type="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Correo electrónico</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input  name="txtEmail" placeholder="Correo electrónico" class="form-control" required="true" type="text">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                          <input class="btn btn-primary " type="submit" name="btnRegistrar" value="Registrar"  />
                                        </div>
                                    </div>
                                </div>
                                
                            </form>

                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
