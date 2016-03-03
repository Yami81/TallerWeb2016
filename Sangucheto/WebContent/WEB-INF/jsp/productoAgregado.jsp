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
		
		
		<div class="panel panel-default">
  			<!-- Default panel contents -->
  			<div class="panel-heading" style="text-align:center">PRODUCTOS AGREGADOS</div>
  			

  		<!-- List group -->
 			 <ul class="list-group">
    			<li class="list-group-item">NOMBRE: <c:out value="${ingrediente.nombre}"/></li>
		  		<li class="list-group-item">PRECIO:$ <c:out value="${ingrediente.precio}"/></li>
		  		<li class="list-group-item">TIPO: <c:out value="${ingrediente.tipo}"/></li>
  			</ul>
		</div>
		<div>
      		<div class="form-group">
				<button class="btn btn-success" type="submit"><a href="irIndex.do" class="btn"> Volver Menu Principal </a></button>
			</div>
		</div>
		
			<!--  <div id="contenido">  
				<div id="nombre">-->
				<!-- JSTL - Muestra el resultado de una expresión.  -->
				<!--  Nombre: <c:out value="${ingrediente.nombre}"/>
				</div>
				<div id="precio">-->
				<!-- JSTL - Muestra el resultado de una expresión.  -->
				<!--  Precio:$ <c:out value="${ingrediente.precio}"/>
				</div>
			    <div id="tipo">-->
				<!-- JSTL - Muestra el resultado de una expresión.  -->
				<!--Tipo: <c:out value="${ingrediente.tipo}"/>
				</div> 
				</br>
				<a href="irIndex.do" class="simulaBoton"> Volver Menu Principal </a>
			</div>-->
		
	
	</div>
</body>
</html>