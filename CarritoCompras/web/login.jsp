<%-- 
    Document   : login
    Created on : 17/07/2016, 05:44:08 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
    </head>
    <jsp:include page="/WEB-INF/PAGES/TEMPLATE.jsp">
        <jsp:param name="content" value= "TEST"/>
        <jsp:param name="title" value="Concesionario"/>
       
    </jsp:include>
    <body>
        
        <div class="container">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Iniciar Sesión</div>
                        <div style="float:right; font-size: 80%; position: relative;top:-10px"><a href="#">Olvidó su contraseña?</a> </div>
                    </div>
                    <div style="padding-top:30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                        <form id="loginform" class="form-horizontal" role ="form" method="post" action="SVerificarUsuario" >
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="txtUsuario" value="" placeholder="Usuario">
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="txtClave" placeholder="Contraseña">
                            </div>
                            
                            <div style="margin-top:10px" class="form-group">
                                <div class="col-md-12 control">
                                    <input type="submit" name="btnEntrar" id="btnEntrar" value="Entrar"  class="btn btn-success" />
                                    
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
