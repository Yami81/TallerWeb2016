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
<title>Insert title here</title>
<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<div class="row">	
				<div class="col-md-4 col-md-offset-3">
					<p>ESTADO DE LA COMPRA</p>
				</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-3">
				<div class="form-group">
					<c:forEach items="${listaComprada}" var="listacompra">
       				 	${listacompra.nombre}
						$ ${listacompra.precio}</br>
					</c:forEach>
    			</div>
			</div>		       
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-3">
				<div class="form-group">
					<label class="text-uppercase">PRECIO TOTAL:$ ${precio}</label>
    			</div>
			</div>		       
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-3">
				<div class="form-group">
					<label>¿Desea agregar Descuento a su compra?</label>
    			</div>
			</div>		       
		</div>
		<div class="col-md-4 col-md-offset-3">
		<div class="btn-toolbar">
       			 	
       			 <div class="btn-group">
      			 	<a href="descuentoMonto.do" class="btn btn-success">Por Monto Fijo</a>
      			 </div>
      			     				
      			<div class="btn-group">
					<a href="descuentoPorcentaje.do" class="btn btn-success">Por Porcentaje</a>
				</div>
		</div>	
		</br>
		<div class="btn-group">
			<a href="ningunDescuento.do" class="btn btn-success">Finalizar Compra</a>
		</div>	
		</div>
	</div>
		

<!--<c:forEach items="${listaComprada}" var="listacompra">

	${listacompra.nombre}
	
	${listacompra.precio}
	</br>
</c:forEach>

<p>Precio Total es:${precio}</p>
<br>
<p>¿Desea agregar algun descuento?</p>
<br>
<a href="descuentoMonto.do">Descuento Fijo</a>
<a href="descuentoPorcentaje.do">Descuento por Porcentaje</a>

</br>
<br>
<a href="ningunDescuento.do" class="simulaBoton"> Terminar sanguchetto </a>-->

</body>
</html>