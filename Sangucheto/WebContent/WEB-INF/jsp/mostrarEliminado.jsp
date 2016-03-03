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
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
	<style type="text/css">
		.titulo{text-align:center;}
		label {
  				display: block;
  				margin: .5em 0 0 0;
			 }
	</style>
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<div class="alert alert-success" style="text-align:center">
			Se ha eliminado correctamente el producto del Stock!
		</div>
		<center>
		
       		<a href="verProducto.do" class="btn btn-success">Ver Detalle</a>
			
		</center>
	</div>	
	
	<!-- <div id="contenedor">
		<div id="encabezado">
			<h2 class="titulo">SANGUCHETO</h2>
			
		</div>
		<div id="contenido">	
			<h2>Producto eliminado.</h2>
		</div>
		<a href="verProducto.do">Ver Detalle</a>
	</div> -->
	
	
    
</body>
</html>