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
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<div class="row">	
				<div class="col-md-9">
					<p>AGREGAR SU PEDIDO A SANGUCHETTO</p>
				</div>
		</div>
		<form:form action="comprarIngredientes.do" method="POST" onsubmit="return submitir(this);">
			
			<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label class="text-uppercase">Ingredientes</label>
							<select class="form-control" name="nombre">
								<option>Elija opci&oacute;n</option>
								<c:forEach items="${ingredienteEnLista}" var="ingreLista">
									<!-- <option value="${ingredientes.nombre}">${ingredientes.nombre}</option>-->
									<option value="<c:out value="${ingreLista.nombre}" />">
											<c:out value="${ingreLista.nombre}" />
									</option>		
								</c:forEach>
							</select>
						</div>
					</div>
			</div>
			<div class="btn-group">
      			 <button class="btn btn-success" type="submit">Agregar Ingrediente</button>
      		</div>
		</form:form>
		<form:form action="comprarCondimentos.do" method="POST" onsubmit="return submitir(this);">
			<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label class="text-uppercase">Condimentos</label>
							<select class="form-control" name="nombre2">
								<option>Elija opci&oacute;n</option>
								<c:forEach items="${condimentoEnLista}" var="condiLista">
									<!-- <option value="${ingredientes.nombre}">${ingredientes.nombre}</option>-->
									<option value="<c:out value="${condiLista.nombre}" />">
											<c:out value="${condiLista.nombre}" />
									</option>		
								</c:forEach>
							</select>
						</div>
					</div>
			</div>
			<div class="btn-group">
      			 <button class="btn btn-success" type="submit">Agregar Condimento</button>
      		</div>
		</form:form>
		</br>
		<div>
			<p style="color:red">${mensaje}</p>
		</div>
		<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label>Hasta el momento tiene de INGREDIENTES:</label>
								<c:forEach items="${ingredientesSanguchetto}" var="ingreCarro">
									${ingreCarro.nombre} </br>
								</c:forEach>
						</div>
					</div>
		</div>
		<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label>Hasta el momento tiene de CONDIMENTOS:</label>
								<c:forEach items="${condimentosSanguchetto}" var="condiCarro">
									${condiCarro.nombre} </br>
								</c:forEach>
								
						</div>
					</div>
		</div>
		<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label class="text-uppercase">PRECIO TOTAL:$ ${precioFinal}</label>
								
						</div>
					</div>
		</div>
		<div class="btn-toolbar">
       			 	
       			 <div class="btn-group">
      			 	<a href="terminar.do" class="btn btn-success">Finalizar</a>
      			 	 
      			 </div>
      			     				
      			<div class="btn-group">
					<a href="irIndex.do" class="btn btn-success"> Volver Menu Principal </a>
				</div>
		</div>
	</div>
	<!--  <div id="contenedor">
		<div id="encabezado">
			<h2 class="titulo">SANGUCHETO</h2>
			<div id="textoProducto">
				Agregar su Pedido a Sanguchetto
			</div>
		</div>
		<div id="contenido">
				<div>
				
				<form:form action="comprarIngredientes.do" method="POST" onsubmit="return submitir(this);">
					<div> <label name="nombre" class="descripcion">Ingredientes</label> </div>
		
					<div>
					<select name="nombre" class="nombre" style="width:145px">
		    			<option></option>
		    			<c:forEach items="${ingredienteEnLista}" var="ingreLista">
							<option value="${ingreLista.nombre}">${ingreLista.nombre}</option>
						</c:forEach>
					</select>
					
					</div>
					<div> <input type="submit" value="Agregar"/> </div>
					</form:form>	
					</div>
					
					
					
					</div>
					
					<form:form action="comprarCondimentos.do" method="POST" onsubmit="return submitir(this);">
					<div> <label name="nombre2" class="descripcion">Condimentos</label> </div>
		
					<div>
					<select name="nombre2" class="nombre2" style="width:145px">
		    			<option></option>
		    			<c:forEach items="${condimentoEnLista}" var="condiLista">
							<option value="${condiLista.nombre}">${condiLista.nombre}</option>
						</c:forEach>
					</select>
					
					</div>
					<div> <input type="submit" value="Agregar"/> </div>
					</form:form>	
					
					<br>
					<p style="color:red">${mensaje}</p>
					</br>
					
					<label name="nombre" class="descripcion">hasta el momento tiene:</label>
					<label name="nombre" class="descripcion">ingredientes</label>
					<c:forEach items="${ingredientesSanguchetto}" var="ingreCarro">
						${ingreCarro.nombre}
					</c:forEach>
					
					<br>
					<br>
					<label name="nombre" class="descripcion">Condimentos</label>
					<c:forEach items="${condimentosSanguchetto}" var="condiCarro">
						${condiCarro.nombre}
					</c:forEach>
					
					<br>	
					<label name="nombre" class="descripcion">El precio total es: </label>	
					${precioFinal}
					<br>	
					
				
				 <a href="terminar.do">finalizar</a> 
				</br>
				<a href="irIndex.do"> Volver Menu Principal </a>
			</div>
		</div>
	</div>-->	
</body>
</html>