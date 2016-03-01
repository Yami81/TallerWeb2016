<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>TP Final Sangucheto</title>
	<style type="text/css">
		.titulo{text-align:center;}
		label {
  				display: block;
  				margin: .5em 0 0 0;
			 }
	</style>
</head>
<body>
	<div id="contenedor">
		<div id="encabezado">
			<h2 class="titulo">SANGUCHETO</h2>
			<div id="textoProducto">
				AGREGAR PRODUCTO:
			</div>
		</div>
		<div id="contenido">
			<form:form method="POST" modelAttribute="ingrediente" action="productoAgregado.do">
			
				<label name="nombre">Nombre</label>
				<input type="text" name="nombre">
				<label name="precio">Precio</label>
				<input type="text" name="precio">
				<label name="tipo">Seleccione Tipo</label>
					       
				 <select name="tipo" id="tipoSelect">
        			
       					 <c:forEach items="${listaTipo}" var="tipoProducto">
          				 	<option value="${tipoProducto}">${tipoProducto}</option>
        				 </c:forEach>
      			 </select>
      			 </br>
      			 </br>
      			 <div id="botonAgregar">
      			 	<input type="submit" name="agregar" value="Agregar Producto">
      			 </div>
				    
				    
							
			</form:form>
		</div>
	</div>
</body>
</html>