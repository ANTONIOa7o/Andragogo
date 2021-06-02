package com.msl.services;

import java.util.List;

import javax.websocket.server.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.json.JSONArray;
import org.json.JSONObject;


import com.msl.models.Libros;
import com.msl.negocio.IntfznegocioLibros;
import com.msl.negocio.NegocioLibros;



@Path("/")
public class LibrosREST {

	private IntfznegocioLibros negocio = new NegocioLibros();
	
	@GET
	@Path("consultar")
	@Produces("application/json")
	public String todos() {
		List<Libros> lista = negocio.consultarTodos();
		JSONArray array = new JSONArray(lista);
		return array.toString();
	}
	
	@POST
	@Path("alta")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces("application/json")
	public String alta(
			@FormParam("id") int id,
			@FormParam("titulo") String titulo,
			@FormParam("autor") String autor, 
			@FormParam("editorial") String editorial,
			@FormParam("isbn") String isbn,
			@FormParam("publicacion") int publicacion,
			@FormParam("precio") double precio,
			@FormParam("descripcion") String descripcion)
		
	{
		Libros nuevo=new Libros(id,titulo,autor,editorial,isbn,publicacion,precio,descripcion);
		boolean insertado = negocio.insertarNuevo(nuevo);
		JSONObject json=new JSONObject();
		json.put("insertado", insertado);
		return json.toString();
	}
	
	@PUT
	@Path("modificar")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces("application/json")
	public String modificar(@FormParam("id") int id, 
	@FormParam("precio") double precio) {
	boolean modificado = negocio.modificarPrecio(id, precio);
	JSONObject json=new JSONObject();
	json.put("modificado", modificado);
	return json.toString();
	}
	
	@DELETE
	@Path("eliminar/{codigo}")
	@Produces("application/json")
	public String eliminar(@PathParam("codigo") int id) {
		boolean eliminado=negocio.eliminarLibro(id);
		JSONObject json=new JSONObject();
		json.put("eliminado", eliminado);
		return json.toString();
	}
}
