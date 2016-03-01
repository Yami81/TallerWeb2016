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
				ELIMINAR PRODUCTO
			</div>
		</div>
		<div id="contenido">
			<form:form action="mostrarProductoEliminado.do" class="nombre">
				<div>
					<label name="nombre">Seleccione Ingrediente</label>
				</div>
				<div>
					<select name="nombre" style="width:145px">
						
						<c:forEach items="${listaIngrediente}" var="ingredientes">
							<option value="${ingredientes.nombre}">${ingredientes.nombre}</option>
						</c:forEach>
					</select>
				</div>
				<div>
					
					<input type="submit" name="agregar" value="Eliminar">
				</div>
				<div>
					</br>
					<a href="irIndex.do" class="simulaBoton"> Volver Menu Principal</a>
				</div>
			</form:form>
			
		</div>
</body>
</html>