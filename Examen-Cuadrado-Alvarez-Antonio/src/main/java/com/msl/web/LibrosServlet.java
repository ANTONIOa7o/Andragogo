package com.msl.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.msl.models.Libros;
import com.msl.negocio.Carrito;
import com.msl.negocio.IntfznegocioLibros;

import com.msl.negocio.NegocioLibros;


@WebServlet("/servlet")
public class LibrosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IntfznegocioLibros negocio = new NegocioLibros();

	public LibrosServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	private String procesarTodos(HttpServletRequest request, HttpServletResponse response) {
		List<Libros> libros = negocio.consultarTodos();

		
		request.setAttribute("lista", libros);

		return "/mostrarTodos.jsp";
	}
	
	private String procesarBusqueda(HttpServletRequest request, HttpServletResponse response) {
		String isbn = request.getParameter("isbn");
		Libros libros = negocio.buscarIsbn(isbn);
		request.setAttribute("encontrado",libros);
		return "/mostrarLibro.jsp";
	}
	
	private String procesarAlta(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("codigo"));
		String titulo = request.getParameter("titulo");
		String autor = request.getParameter("autor");
		String editorial = request.getParameter("editorial");
		String isbn = request.getParameter("isbn");
		int publicacion = Integer.parseInt(request.getParameter("publicacion"));
		double precio = Double.parseDouble(request.getParameter("precio"));
		String descripcion = request.getParameter("descripcion");
				boolean insertado = negocio.insertarNuevo(new Libros(id,titulo,autor,editorial,isbn,publicacion,precio,descripcion));
		if (insertado) {
			request.setAttribute("mensaje", "Libro insertado en la BBDD correctamente");
		} else {
			request.setAttribute("mensaje", "No se pudo insertar el libro en la BBDD");
		}
		
		return "/mostrarMensaje.jsp";
	}

	private String procesarEliminar(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("codigo"));
		
		boolean eliminado = negocio.eliminarLibro(id);
		if (eliminado) {
			request.setAttribute("mensaje", "Libro eliminado de la BBDD correctamente");
		} else {
			request.setAttribute("mensaje", "No se pudo eliminar el Libro de la BBDD");
		}
		return "/mostrarMensaje.jsp";
	}
	
private String procesarModificar(HttpServletRequest request, HttpServletResponse response) {
		
		int id = Integer.parseInt(request.getParameter("codigo"));
		double precio = Double.parseDouble(request.getParameter("precio"));
		
		boolean modificado = negocio.modificarPrecio(id, precio);
		
		if(modificado) {
			request.setAttribute("mensaje", " MODIFICADO");			
		}else {
			request.setAttribute("mensaje", "no se ha podido modificar");
		}	
		
		return "/mostrarMensaje.jsp";	
		
			
	}
private String procesarCompra(HttpServletRequest request, HttpServletResponse response) {
	// Recuperar el codigo del producto
	int id = Integer.parseInt(request.getParameter("codigo"));
	
	// Recuperar la session del usuario. Si no existe session se crea
	// true -> si no existe la session la crea. Es lo mismo que getSession()
	// false -> si no existe la sesion NO la crea.
	HttpSession miSession = request.getSession(true);
	
	// Agregamos un nuevo carrito a esa session nueva o recuperar el carrito de la session existente
	Carrito carrito = (Carrito) miSession.getAttribute("miCarro");
	if (carrito == null) {
		carrito = new Carrito();
		miSession.setAttribute("miCarro", carrito);
	}
	
	// Agregamos el producto al carrito
	carrito.addLibro(id);
	
	// Devolvemos la vista
	return "/mostrarCarrito.jsp";
}

private String procesarSacarProducto(HttpServletRequest request, HttpServletResponse response) {
	// Recuperar el codigo del producto
	int id = Integer.parseInt(request.getParameter("codigo"));
	
	// Recuperar la session del usuario que debe de existir
	// true -> si no existe la session la crea. Es lo mismo que getSession()
	// false -> si no existe la sesion NO la crea.
	HttpSession miSession = request.getSession(false);
	
	// Agregamos un nuevo carrito a esa session nueva o recuperar el carrito de la session existente
	Carrito carrito = (Carrito) miSession.getAttribute("miCarro");
	
	// Agregamos el producto al carrito
	carrito.sacarLibro(id);
	
	// Devolvemos la vista
	return "/mostrarCarrito.jsp";
}
private String procesarBusquedaId(HttpServletRequest request, HttpServletResponse response) {
	int id = Integer.parseInt(request.getParameter("codigo"));
	Libros libros = negocio.buscarId(id);
	request.setAttribute("encontrado",libros);
	return "/mostrarLibro.jsp";
}
private String procesarBusquedaTitulo(HttpServletRequest request, HttpServletResponse response) {
	String titulo = request.getParameter("titulo");
	Libros libros = negocio.buscarTitulo(titulo);
	request.setAttribute("encontrado",libros);
	return "/mostrarLibro.jsp";
}
private String procesarBusquedaIsbn(HttpServletRequest request, HttpServletResponse response) {
	String isbn = request.getParameter("isbn");
	Libros libros = negocio.buscarIsbn(isbn);
	request.setAttribute("encontrado",libros);
	return "/mostrarLibro.jsp";
}

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String vista = "/index.jsp";

		switch (request.getParameter("op")) {
			case "1": // consultar todos
				vista = procesarTodos(request, response);
				break;
	
			case "2": // buscar un producto
				vista = procesarBusqueda(request, response);
				break;
	
			case "3": // alta producto
				vista = procesarAlta(request, response);
				break;
	
			case "4": // eliminar producto
				vista = procesarEliminar(request, response);
				break;
			case "5":
				vista=procesarModificar(request, response);
				break;
			case "6": // comprar producto
				vista = procesarCompra(request, response);
				break;
	
			case "7": // sacar producto del carrito
				vista = procesarSacarProducto(request, response);
				break;
			case "8": // sacar producto del carrito
				vista = procesarBusquedaId(request, response);
				break;
			case "9": // sacar producto del carrito
				vista = procesarBusquedaTitulo(request, response);
				break;
			case "10": // sacar producto del carrito
				vista = procesarBusquedaIsbn(request, response);
				break;
	
			default:
				break;
		}

		// Elegir la vista que mostrara el resultado
		RequestDispatcher rd = request.getRequestDispatcher(vista);

		// Redigir hacia esa pagina
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
