
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.msl.models.Libros"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Listados</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>
<script src="JS/js.js"></script>
<link rel="stylesheet" href="CSS/css.css">
</head>

<body>

	
	<div>
		<header>
			<h1 class="titulo" id="navegador">
				-LISTADO-<img src="images/biblioteca-digital.png" width="10%">
			</h1>
		</header>
		<nav>
			<p>Barra de navegacion</p>
		</nav>

		<h2 class="nav-item transicionT titulo2" href="#">Listado de
			Entradas:</h2>
		<br />
		<br />
		<br />
		<br />
		<div>
		<%
	List<Libros> lista = (List<Libros>) request.getAttribute("lista");
	%>
			<table class="table table-hover sm">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">TITULO</th>
						<th scope="col">AUTOR</th>
						<th scope="col">EDITORIAL</th>
						<th scope="col">ISBN</th>
						<th scope="col">PUBLICACION</th>
						<th scope="col">PRECIO</th>
						<th scope="col">COMPRAR</th>

					</tr>
				</thead>

				<% for (Libros prod : lista) { %>
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
						<a href="servlet?op=6&codigo=<%= prod.getID() %>">
							<img alt="Comprar <%= prod.getDescripcion() %>" src="images/addCarrito.jpg" 
								title="Agregar <%= prod.getDescripcion() %>" width="50px" />
						</a>
					</td>
				</tr>


				<% } %>
				
			</table>
		</div>
		<article></article>



		<footer>
			<div class="card text-center">
				<div class="card-header">
					<p class="card-text">
						MSL Formacion, S.l<br /> Marqués de Ahumada<br /> 28014 Madrid<br />
						tfno: 91 854 36 55
					</p>
				</div>
				<div class="card-body"></div>
				<a href="#" class="btn btn-secundary bg-success">SUBIR</a>
				<div class="card-footer text-muted"></div>
			</div>
		</footer>



	</div>
</body>

</html>