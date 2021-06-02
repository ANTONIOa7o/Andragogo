package com.msl.negocio;

import java.util.List;

import com.msl.models.Libros;
import com.msl.persistencia.IntfzLibrosDAO;
import com.msl.persistencia.LibrosDAO;

public class NegocioLibros implements IntfznegocioLibros {

	IntfzLibrosDAO dao=new LibrosDAO();

	@Override
	public List<Libros> consultarTodos() {
		return dao.consultarTodos();
	}

	@Override
	public boolean insertarNuevo(Libros nuevo) {
		
		return dao.insertarLibro(nuevo);
	}

	@Override
	public Libros buscar(int id) {
		
		return dao.buscar(id);
	}

	@Override
	public boolean eliminarLibro(int id) {
		
		return dao.eliminarLibro(id);
	}

	@Override
	public boolean modificarPrecio(int id, double nuevoPrecio) {
		
		return dao.modificarPrecio(id, nuevoPrecio);
	}

	@Override
	public Libros buscarIsbn(String isbn) {
		
		return dao.buscarIsbn(isbn);
	}
	@Override
	public Libros buscarTitulo(String titulo) {
		return dao.buscarTitulo(titulo);
	}

	@Override
	public Libros buscarId(int id) {
		
		return dao.buscarId(id);
	}


}
