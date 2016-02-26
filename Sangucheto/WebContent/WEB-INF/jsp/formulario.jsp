<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Formulario Sangucheto</title>
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
			<form:form modelAttibute="ingredientes" action="" method="POST">
			
				<label for="nombre">Nombre</label>
				<input type="text" name="nombre">
				<label for="precio">Precio</label>
				<input type="text" name="precio">
				<label for="descripcion">Tipo</label>
				<input type="text" name="tipo">
				
			</form:form>
		</div>
	</div>
</body>
</html>