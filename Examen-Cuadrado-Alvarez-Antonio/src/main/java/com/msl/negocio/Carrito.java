package com.msl.negocio;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


import com.msl.models.Libros;


public class Carrito implements Serializable {
	
	
	
	private static final long serialVersionUID = -6927176239806303587L;
	private double importe;
	private List<Libros> contenido = new ArrayList<>();
	private IntfznegocioLibros negocio = new NegocioLibros();
	
	public void addLibro(int id) {
		Libros encontrado = negocio.buscar(id);
		contenido.add(encontrado);
		importe += encontrado.getPrecio();
	}
	
	public void sacarLibro(int id) {
		Libros eliminar = null;
		for (Libros producto : contenido) {
			if (id == producto.getID()) {
				eliminar = producto;
			}
		}
		contenido.remove(eliminar);
		importe -= eliminar.getPrecio();
	}
	
	// Clases idempotentes -> solo tienen metodos get
	public double getImporte() {
		return importe;
	}
	
	public List<Libros> getContenido() {
		return contenido;
	}

}
