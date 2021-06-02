package com.msl.persistencia;

import java.util.List;

import com.msl.models.Libros;

public interface IntfzLibrosDAO {
	
	void abrirConexion();
	void cerrarConexion();
	
	
	List<Libros> consultarTodos();
	
	boolean insertarLibro(Libros nuevo);
	Libros buscar(int id);
	boolean eliminarLibro(int id);
	boolean modificarPrecio(int id,double nuevoPrecio);
	Libros buscarId(int id);
	Libros buscarIsbn(String isbn);
	Libros buscarTitulo(String titulo);

}
