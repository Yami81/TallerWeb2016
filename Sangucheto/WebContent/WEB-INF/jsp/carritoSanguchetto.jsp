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
</head>
<body>
	<div id="contenedor">
		<div id="encabezado">
			<h2 class="titulo">SANGUCHETO</h2>
			<div id="textoProducto">
				Agregar su Pedido a Sanguchetto
			</div>
		</div>
		<div id="contenido">
				<div>
				<form:form action="comprarIngredientes" method="POST" onsubmit="return submitir(this);">
					<div> <label name="nombre" class="descripcion">Ingrediente</label> </div>
		
					<div>
					<select name="nombre" class="nombre" style="width:145px">
		    			<option></option>
		    			<c:forEach items="${ingredienteEnLista}" var="ingreLista">
							<option value="${ingreLista.nombre}">${ingreLista.nombre}</option>
						</c:forEach>
					</select>
					</div>
		
					<div> <label name="nombre">Unidad</label><input type="text" name="unidades" class="textarea"/>
						
					</div>
					</br>
					<div> <input type="submit" value="Agregar"/> </div>
				</form:form>
				<form:form action="comprarIngredientes" method="POST" onsubmit="return submitir(this);">
		
				<div><label name="nombre" class="descripcion">Condimento</label> </div>
		
				<div>
				<select name="nombre" class="nombre" style="width:145px">
		    		<option></option>
		    		<c:forEach items="${condimentoEnLista}" var="condiLista">
						<option value="${condiLista.nombre}">${condiLista.nombre}</option>
					</c:forEach>
					</select>
				</div>
		
				<div> <label name="nombre">Unidad</label><input type="text" name="unidades" class="textarea"/>
					
				</div>
				</br>
				<div> <input type="submit" value="Agregar"/> </div>
				</form:form>
				</br>
				<a href="irIndex.do"> Volver Menu Principal </a>
			</div>
		</div>
	</div>	
</body>
</html>