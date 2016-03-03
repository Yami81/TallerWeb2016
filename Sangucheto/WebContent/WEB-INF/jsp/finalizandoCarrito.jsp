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


<br>
<br>

<c:forEach items="${listaComprada}" var="listacompra">

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
<a href="ningunDescuento.do" class="simulaBoton"> Terminar sanguchetto </a>

</body>
</html>