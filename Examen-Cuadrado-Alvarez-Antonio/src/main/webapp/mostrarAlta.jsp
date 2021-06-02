
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.msl.models.Libros"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=request.getAttribute("encontrado")%>
	<jsp:useBean id="encontrado" scope="request"
		class="com.msl.models.Libros" />

	<h2>Alta Producto</h2>

	<ul>
		<li>ID:<jsp:getProperty property="id" name="nuevo"/></li>
		<li>Titulo:<jsp:getProperty property="titulo" name="nuevo"/></li>
		<li>Autor:<jsp:getProperty property="autor" name="nuevo"/></li>
		<li>Editorial:<jsp:getProperty property="editorial" name="nuevo"/></li>
		<li>Isbn:<jsp:getProperty property="isbn" name="nuevo"/></li>
		<li>Publicacion:<jsp:getProperty property="publicacion" name="nuevo"/></li>
		<li>Precio:<jsp:getProperty property="precio" name="nuevo"/></li>
		<li>Descripcion:<jsp:getProperty property="descripcion" name="nuevo"/> </li>
	
	</ul>
</body>
</html>