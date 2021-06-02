
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.msl.models.Libros"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LIBRO SELECCIONADO</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
    <script src="JS/js.js"></script>
    <link rel="stylesheet" href="CSS/css.css">
</head>
<body>
	
	<jsp:useBean id="encontrado" scope="request"
		class="com.msl.models.Libros" />

	<h2><img src="images/libros1.png" width="10%">libro encontrado</h2>
<div>
	<ul>
		<li>ID:<jsp:getProperty property="ID" name="encontrado"/></li>
		<li>Titulo:<jsp:getProperty property="titulo" name="encontrado"/> </li>
		<li>Autor:<jsp:getProperty property="autor" name="encontrado"/> </li>
		<li>Editorial:<jsp:getProperty property="editorial" name="encontrado"/> </li>
		<li>Isbn:<jsp:getProperty property="isbn" name="encontrado"/> </li>
		<li>Publicacion:<jsp:getProperty property="publicacion" name="encontrado"/> </li>
		<li>Precio:<jsp:getProperty property="precio" name="encontrado"/></li>
		<li>Descripcion:<jsp:getProperty property="descripcion" name="encontrado"/> </li>
		
	</ul>
</div>
</body>
</html>