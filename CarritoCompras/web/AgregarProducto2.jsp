<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>

<%-- Validar inicio de sesion --%>


<%-- Finalizar validaciones --%>



<%-- Obtener Vector de Productos de la BD --%>

    <%
    Producto pro=new Producto().buscarProducto(Integer.parseInt(request.getParameter("cod")));
    %>

<%-- Finalizar --%>

<html>
<head>
<title>.:PAW-Agregar Productos</title>
<style type="text/css">
<!--
body {
	background-color: #FFFF99;
}
body,td,th {
	font-family: Arial, Helvetica, sans-serif;
}
.Estilo3 {color: #FFFFFF; font-weight: bold; }
</style>
</head>
<body>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="84" bgcolor="#FF0000"><img src="img/carritorx8[1].jpg" width="84" height="77" /></td>
    <td width="716" bgcolor="#FF0000"><h1 style="color:#FFFFFF">Carrito de Compas con JSP y Sesiones</h1></td>
  </tr>
  <tr align="center">
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr align="center">
    <td colspan="2">
      <h4><a href="MostrarProductos.jsp">Consultar Productos</a> | <a href="AgregarProducto1.jsp">Agregar al Carrito</a> | <a href="SCerrarSesion">Cerrar Sesion</a> </h4></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">

        <form name="frmPrincipal" action="SAgregarCarro"  method="post">

        <table width="100%" border="0" cellpadding="0">
      <tr>
        <td width="17%" bgcolor="#FF0000"><span class="Estilo3">Codigo:</span></td>
        <td width="83%"><label>
          <input name="txtCodigo" type="text" id="txtCodigo" size="10" readonly value="<%=pro.getProducto_codigo() %>" >
        </label></td>
      </tr>
      <tr>
        <td bgcolor="#FF0000"><span class="Estilo3">Producto:</span></td>
        <td><input name="txtProducto" type="text" id="txtProducto" size="60" readonly value="<%=pro.getProducto_nombre() %>" ></td>
      </tr>
      <tr>
        <td bgcolor="#FF0000"><span class="Estilo3">Precio:</span></td>
        <td><input name="txtPrecio" type="text" id="txtPrecio" size="15" readonly value="<%=pro.getProducto_precio() %>"></td>
      </tr>
      <tr>
        <td bgcolor="#FF0000"><span class="Estilo3">Stock:</span></td>
        <td><input name="txtStock" type="text" id="txtStock" size="15" readonly value="<%=pro.getProducto_stock() %>"></td>
      </tr>
      <tr>
        <td bgcolor="#FF0000"><span class="Estilo3">Cantidad Pedir:</span></td>
        <td><input name="txtCantidadPedir" type="text" id="txtCantidadPedir" value="1" size="15"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="button" id="button" value="Registrar">
        </label></td>
      </tr>
    </table>

    </form>

    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
</body>
</html>
