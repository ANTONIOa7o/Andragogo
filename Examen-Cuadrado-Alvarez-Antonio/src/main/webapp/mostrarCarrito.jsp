<%@page import="com.msl.models.Libros"%>
<%@page import="com.msl.negocio.Carrito"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script>
			window.onbeforeunload = function() {
				
				  return "¿Desea recargar la página web?";
			};
		</script>
	</head>
	<body>
		
		<% Carrito carrito = (Carrito) session.getAttribute("miCarro");
		List<Libros> lista = carrito.getContenido(); %>
		
		<h2 align="center">Importe: <%= carrito.getImporte() %></h2>
		
		<table border="1" align="center">
			<tr>
						<th>ID</th>
						<th>TITULO</th>
						<th>AUTOR</th>
						<th>EDITORIAL</th>
						<th>ISBN</th>
						<th>PUBLICACION</th>
						<th>PRECIO</th>
						<th>COMPRAR</th>

					</tr>
			
			<% for(Libros prod: lista) { %>
				<tr>
					<td><%=prod.getID()%></td>
					<td><%=prod.getTitulo()%></td>
					<td><%=prod.getAutor()%></td>
					<td><%=prod.getEditorial()%></td>
					<td><%=prod.getIsbn()%></td>
					<td><%=prod.getPublicacion()%></td>
					<td><%=prod.getPrecio()%></td>
					<td><%=prod.getDescripcion()%></td>
					<td>
					<td>
						<a href="servlet?op=7&codigo=<%= prod.getID() %>">
							<img alt="Eliminar <%= prod.getDescripcion() %>" src="images/deleteCarrito.jpg" 
								title="Sacar del carrito <%= prod.getDescripcion() %>" width="50px" />
						</a>
					</td>
				</tr>
			<% } %>
		</table>
	</body>
</html>