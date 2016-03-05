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
</head>
<body>
	<div class="container">	 <!-- //marco contenedor  general -->
		<div class="page-header" style="text-align:center">
			<h1>SANGUCHETTO</h1>
		</div>
		<div class="row">	
			<div class="col-md-5">
				<div class="form-group">	
					<label class="text-uppercase">${mensaje}</label>
				</div>
			</div>
		</div>
		<div class="row">	
			<div class="col-md-5">
				<div class="form-group">	
					<label class="text-uppercase">PRECIO FINAL:$ ${total}</label>
				</div>
			</div>
		</div>
																			
			<div class="alert alert-success" style="text-align:center">
				Gracias por su compra, vuelva pronto!!!
			</div>
			<center>
		
       		<a href="vaciarCarrito.do" class="btn btn-success">Finalizar</a>
			
		</center>
			
	</div>	

<!-- ${mensaje}
<br>
<p>El precio final es de $ ${total}</p>
<br>
<p>Gracias por su compra, vuelva pronto</p>
<br>
<a href="vaciarCarrito.do">Finalizar</a> -->



</body>
</html>