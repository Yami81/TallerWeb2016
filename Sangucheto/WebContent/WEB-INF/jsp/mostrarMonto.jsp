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

<form:form method="POST" action="agregarDescuentoMonto.do" onsubmit="return submitir();">
					<select class="form-control" name="numero" id="tipoSelect">
        						<option>Elija Descuento</option>
       					 			<c:forEach items="${listaMonto}" var="montoLista">
          				 				<!-- <option value="${tipoProducto}">${tipoProducto}</option> -->
          				 				<option value="<c:out value="${montoLista}" />">
											<c:out value="${montoLista}" />
										</option>
        				 			</c:forEach>
					</select>
			<input type="submit" value="Agregar"/>
					
</form:form>			
</body>
</html>