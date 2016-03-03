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
	<script type="text/javascript">
	
		function submitir(){
				
				var cantidad = document.getElementById("cant").value;
				
				if(validarCantidad(cantidad))
				{
					return true;
				}
				else{
					alert("Debe ingresar una Cantidad valida.");
					return false;
				}
		}
		
		function validarCantidad(valor){
			var expReg = /^([0-9])*$/;
			
			if(expReg.test(valor)){
				return true;
			}
			else 
				return false;
		}
	</script>
	
</head>
<body>
	<div id="contenedor">
		<div id="encabezado">
			<h2 class="titulo">SANGUCHETO</h2>
			<div id="textoProducto">
				AGREGAR PRODUCTO A STOCK
			</div>
		</div>
		<div id="contenido">
			<form:form action="mostrarAgregadoStock.do" class="nombre" onsubmit="return submitir();">
				<div>
					<label name="nombre">Seleccione Ingrediente</label>
				</div>
				<div>
					<select name="nombre" style="width:145px">
						<option></option>
						<c:forEach items="${listaIngrediente}" var="ingredientes">
							<option value="${ingredientes.nombre}">${ingredientes.nombre}</option>
						</c:forEach>
					</select>
				</div>
				<div>
					<label name="nombre">Ingrese Cantidad</label><input type="text" name="cantidad">
					<input type="submit" name="agregar" value="Agregar a Stock">
				</div>
				<div>
					</br>
					<a href="irIndex.do" class="simulaBoton"> Volver Menu Principal</a>
				</div>
			</form:form>
			
		</div>
</body>
</html>