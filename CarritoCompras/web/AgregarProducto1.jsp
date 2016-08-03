<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Controlador.*" %>

<%-- Validar inicio de sesion --%>


<%-- Finalizar validaciones --%>



<%-- Obtener Vector de Productos de la BD --%>

    <%
        Vector<Producto> vecPro=new Producto().listaProductos();
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
        <table width="100%" border="0">
              <tr bgcolor="#FF6600" style="color: #FFFFFF">
                <td width="52%"><h4>Nombre</h4></td>
                <td width="16%" align="right" valign="top"><h4><span class="Estilo3">Stock</span></h4></td>
                <td width="16%" align="right" valign="top"><h4><span class="Estilo3">Precio</span></h4></td>
                <td width="16%" align="right" valign="top"><h4><span class="Estilo3">Proceso</span></h4></td>
              </tr>

              <%for(Producto pro:vecPro){
              String direccion="AgregarProducto2.jsp?cod=" +pro.getProducto_codigo() ;
                  %>
              <tr>
                <td><%=pro.getProducto_nombre() %></td>
                <td align="right" valign="top"><%=pro.getProducto_stock() %></td>
                <td align="right" valign="top"><%=pro.getProducto_precio() %></td>
                <td align="right" valign="top"><a href="<%= direccion%>">COMPRAR</a></td>
              </tr>
              <%}%>

        </table>
    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
</body>
</html>
