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

La compra se realizo con exito, gracias.
<br>
<br>

<c:forEach items="${listaComprada}" var="listacompra">

	${listacompra.nombre}
	
	${listacompra.precio}
	</br>
</c:forEach>

<p>Precio Total es:${precio}</p>

<button class="btn btn-success" type="submit" ><a href="descuentoMonto.do">Descuento Fijo</a></button>
<button class="btn btn-success" type="submit" ><a href="descuentoPorcentaje.do">Descuento por Porcentaje</a></button>
<p>${mensajeDescuento}</p>
</br>
<a href="vaciarCarrito.do" class="simulaBoton"> Volver Menu Principal </a>
</body>
</html>