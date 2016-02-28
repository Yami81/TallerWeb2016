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
</head>
<body>

	<c:forEach items="${listaStock}" var="Producto">
		<label name="nombre">nombre: ${Producto.key.nombre}</label><br>
		<label name="precio">percio: ${Producto.key.precio}</label><br>
		<label name="tipo">tipo: ${Producto.key.tipo}</label><br>
		<label name="cantidad">cantidad: ${Producto.value}</label>
		<br>
		<br>
	</c:forEach>
	
	
	<br>
	<a href="irIndex.do" class="simulaBoton"> Volver Menu Principal </a>


</body>
</html>