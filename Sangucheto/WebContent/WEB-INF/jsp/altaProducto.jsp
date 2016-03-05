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
	<script type="text/javascript">
<<<<<<< HEAD
	
=======

	function submitir(){
		
		if (document.form.tipo.selectedIndex==0){ 
	      	alert("Debe Elegir un tipo."); 
	      	document.form.tipo.focus() 
	      	return false;
		}
	}
	</script>
	<script type="text/javascript">
>>>>>>> origin/master
		function submitir(){
			var nombre = document.getElementById("name").value;
			var precio = document.getElementById("price").value;
			var expRegNombre = /^([A-Za-z])*$/;
			var expRegPrecio = /^[0-9]+(\.[0-9]{1,2})?$/;
			
			if(expRegNombre.test(nombre)){
				if(expRegPrecio.test(precio)){
					if(document.form.tipo.selectedIndex != 0){
						document.form.tipo.focus();
						return true;
					}
					else
					{
						alert("No se puede dar de alta el producto. Por favor verifique datos ingresados.");
						return false;
					}
				}
				else
					{
						alert("No se puede dar de alta el producto. Por favor verifique datos ingresados.");
						return false;
					}
			}
			else
			{
				alert("No se puede dar de alta el producto. Por favor verifique datos ingresados.");
				return false;
			}
		}
		
		
		
		
		/*function submitir(){
			var nombre = document.getElementById("name").value;
			var precio = document.getElementById("price").value;
			
					
			
			if(validarNombre(nombre)==true && validarPrecio(precio)==true){
				
				return true;
				
			}
			else
			{
				alert("No se puede dar de alta el producto. Por favor verifique datos ingresados.")
				return false;
			}
		}
		
		function validarNombre(valor){
			var expReg = /^([A-Za-z])*$/;;
			//^([A-Za-z])*$/;
			//^[a-zA-ZñÑ]+$/
			
			
			if(expReg.test(valor)){
				return true;
			}
			else 
				return false;
		}
		function validarPrecio(valor){
			var expReg = /^[0-9]+(\.[0-9]{1,2})?$/;/* /[,\.][0-9]*)?$/;*/
			
		/*	if(expReg.test(valor)){
				return true;
			}
			else 
				return false;
		}*/
		
	</script>
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
			<div class="page-header" style="text-align:center">
				<h1>SANGUCHETTO</h1>
			</div>
			<form:form method="POST" modelAttribute="ingrediente" action="productoAgregado.do" onsubmit="return submitir();" name="form">
				
				<div class="row">	
					<div class="col-md-9">
					<p>AGREGAR PRODUCTO</p>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-5">
						<div class="form-group">	
							<label class="text-uppercase">Nombre</label>
							<input type="text" class="form-control" id="name" name="nombre">
						</div>
					</div>	
				</div>
			
  
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label class="text-uppercase">Precio</label>
							<input type="text" class="form-control" id="price" name="precio">
							
						</div>	
					</div>	
				</div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label class="text-uppercase">Tipo</label>
							<select class="form-control" name="tipo" id="tipoSelect">
        						<option>Elija Opci&oacute;n</option>
       					 			<c:forEach items="${listaTipo}" var="tipoProducto">
          				 				<!-- <option value="${tipoProducto}">${tipoProducto}</option> -->
          				 				<option value="<c:out value="${tipoProducto}" />">
											<c:out value="${tipoProducto}" />
										</option>
        				 			</c:forEach>
      			 			</select>
						</div>
					</div>		       
				 </div>
				 </br>
				 
      			 	<div class="btn-group">
      			 			<button class="btn btn-success" type="submit">Agregar Producto</button>
      			 		
      			 	</div>
      						
			</form:form>
		
	</div>
</body>
</html>