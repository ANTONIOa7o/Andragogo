package com.msl.negocio;

import java.util.List;

import com.msl.models.Libros;

public interface IntfznegocioLibros {
	
		
	List<Libros> consultarTodos();
	
	boolean insertarNuevo(Libros nuevo);
	Libros buscar(int id);
	Libros buscarIsbn(String isbn);
	Libros buscarTitulo(String titulo);
	Libros buscarId(int id);
	boolean eliminarLibro(int id);
	boolean modificarPrecio(int id,double nuevoPrecio);

	

}
