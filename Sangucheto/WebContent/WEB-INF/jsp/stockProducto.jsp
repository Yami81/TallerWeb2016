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
</head>
<body>
	<div class="container">
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<table class="table table-bordered table-striped">
			<thead>
        		<tr>
            		<th>Nombre</th>
            		<th>Precio</th>
            		<th>Tipo</th>
            		<th>Cantidad</th>
        		</tr>
    		</thead>
    		<tbody>
    			<c:forEach items="${listaStock}" var="Producto">
				<tr>
					<td>${Producto.key.nombre}</td>
					<td>$ ${Producto.key.precio}</td>
					<td>${Producto.key.tipo}</td>
					<td>${Producto.value}</td>
				</tr>
			</c:forEach>
    		</tbody>
		</table>
		<div class="btn-toolbar">
       		<div class="btn-group">
				<a href="irIndex.do" class="btn btn-success"> Volver Menu Principal </a>
			</div>
		</div>
	</div>



	<!-- <div id="contenedor">
	
	<div id="encabezado">SANGUCHETO
			<div id="frase"> Listado Stock de Ingredientes </div>
	</div>
	<div id="centro">	
		</br>
		<table class="gridtable" border=2 width=500>
			<tr>
				<td width=500>Nombre</td>
				<td width=500>Precio</td>
				<td width=500>Tipo</td>
				<td width=500>Cantidad</td>
			</tr>
			<c:forEach items="${listaStock}" var="Producto">
				<tr>
					<td>${Producto.key.nombre}</td>
					<td>$ ${Producto.key.precio}</td>
					<td>${Producto.key.tipo}</td>
					<td>${Producto.value}</td>
				</tr>
			</c:forEach>
			
		</table>
	</div>	
	</div>
	
	<br> 
	<a href="irIndex.do" class="simulaBoton"> Volver Menu Principal </a>-->


</body>
</html>