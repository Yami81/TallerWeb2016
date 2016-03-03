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
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">

	function submitir(){
		
		if (document.form.numero.selectedIndex==0){ 
	      	alert("Debe Elegir un Monto de Descuento."); 
	      	document.form.numero.focus() 
	      	return false;
		}
	}
</script>
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<div class="row">	
				<div class="col-md-4 col-md-offset-3">
					<p>APLICAR DESCUENTO</p>
				</div>
		</div>
		<form:form method="POST" action="agregarDescuentoMonto.do" onsubmit="return submitir();" name="form">
			<div class="row">
					<div class="col-md-4 col-md-offset-3">
						<div class="form-group">
							
							<select class="form-control" name="numero" id="tipoSelect">
        						<option>Elija Opci&oacute;n</option>
       					 			<c:forEach items="${listaMonto}" var="montoLista">
          				 				<!-- <option value="${tipoProducto}">${tipoProducto}</option> -->
          				 				<option value="<c:out value="${montoLista}" />">
											<c:out value="${montoLista}" />
										</option>
        				 			</c:forEach>
      			 			</select>
						</div>
					</div>		       
				 </div>
				 <div class="col-md-4 col-md-offset-3">
					 <div class="btn-group">
	      			 	<button class="btn btn-success" type="submit">Agregar Descuento</button>
	      			 		
	      			 </div>
	      		</div>	 
		</form:form>
	</div>

<!-- <form:form method="POST" action="agregarDescuentoMonto.do" onsubmit="return submitir();">
					<select class="form-control" name="numero" id="tipoSelect">
        						<option>Elija Descuento</option>
       					 			<c:forEach items="${listaMonto}" var="montoLista">-->
          				 				<!-- <option value="${tipoProducto}">${tipoProducto}</option> -->
          				 				<!-- <option value="<c:out value="${montoLista}" />">
											<c:out value="${montoLista}" />
										</option>
        				 			</c:forEach>
					</select>
			<input type="submit" value="Agregar"/>
					
</form:form>	 -->		
</body>
</html>