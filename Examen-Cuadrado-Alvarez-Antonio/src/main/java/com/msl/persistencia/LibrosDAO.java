package com.msl.persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.msl.models.Libros;

public class LibrosDAO implements IntfzLibrosDAO {
	// * CONNECTION-java.sql
	@Override
	public List<Libros> consultarTodos() {
		List<Libros> lista = new ArrayList<>();

		Statement stm;
		try {
			abrirConexion();
			stm = conexion.createStatement();
			ResultSet rs = stm.executeQuery("select*from libreria.libros");
			while (rs.next()) {
				lista.add(new Libros(rs.getInt("id"), rs.getString("titulo"), 
						rs.getString("autor"), rs.getString("editorial"), 
						rs.getString("isbn"), rs.getInt("publicacion"), 
						rs.getDouble("precio"), rs.getString("descripcion")));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}
		return lista;
	}
	
	@Override
	public boolean insertarLibro(Libros nuevo) {

		boolean insertado = false;
		try {
			abrirConexion();
			PreparedStatement pst = conexion.prepareStatement("insert into libreria.libros values(?,?,?,?,?,?,?,?)");
			pst.setInt(1, nuevo.getID());
			pst.setString(2,nuevo.getTitulo());
			pst.setString(3, nuevo.getAutor());
			pst.setString(4, nuevo.getEditorial());
			pst.setString(5, nuevo.getIsbn());
			pst.setInt(6, nuevo.getPublicacion());
			pst.setDouble(7, nuevo.getPrecio());
			pst.setString(8, nuevo.getDescripcion());
			int registros = pst.executeUpdate();
			if (registros == 1) {
				insertado = true;
			}

		} catch (SQLException e) {
			System.out.println("Error al consultar libreria" + nuevo);
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}
		return insertado;
	}
	private Connection conexion;

	

	

	

	

	@Override
	public Libros buscar(int ID) {
		// select * from libreria where ID = ?
		Libros libro = null;
		try {
			abrirConexion();
			PreparedStatement srch = conexion.prepareStatement("select * from libreria.libros where ID = ?");
			srch.setInt(1, ID);
			ResultSet rs = srch.executeQuery();
			
			while(rs.next()) {
				libro = new Libros(rs.getInt("ID"), rs.getString("titulo"), 
						rs.getString("autor"), rs.getString("editorial"), 
						rs.getString("isbn"), rs.getInt("publicacion"), 
						rs.getDouble("precio"), rs.getString("descripcion"));

			}		
		
		} catch (SQLException e) {
			
			System.out.println("Error al consultar un libro");
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}		
		return libro;
	}
	
	@Override
	public Libros buscarIsbn(String isbn) {
		// select * from libreria where Isbn = ?
		Libros libro = null;
		try {
			abrirConexion();
			PreparedStatement srch = conexion.prepareStatement("select * from libreria.libros where isbn = ?");
			srch.setString(1, isbn);
			ResultSet rs = srch.executeQuery();
			
			while(rs.next()) {
				libro = new Libros(rs.getInt("ID"), rs.getString("titulo"), 
						rs.getString("autor"), rs.getString("editorial"), 
						rs.getString("isbn"), rs.getInt("publicacion"), 
						rs.getDouble("precio"), rs.getString("descripcion"));

			}		
		
		} catch (SQLException e) {
			
			System.out.println("Error al consultar un libro");
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}		
		return libro;
	}

	@Override
	public Libros buscarTitulo(String titulo) {
		Libros libro = null;
		try {
			abrirConexion();
			PreparedStatement srch = conexion.prepareStatement("select * from libreria.libros where titulo like ?");
			srch.setString(1, titulo);
			ResultSet rs = srch.executeQuery();
			
			while(rs.next()) {
				libro = new Libros(rs.getInt("ID"), rs.getString("titulo"), 
						rs.getString("autor"), rs.getString("editorial"), 
						rs.getString("isbn"), rs.getInt("publicacion"), 
						rs.getDouble("precio"), rs.getString("descripcion"));

			}		
		
		} catch (SQLException e) {
			
			System.out.println("Error al consultar un libro");
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}		
		return libro;
		
	}
		
	
	
	
	@Override
	public Libros buscarId(int id) {
		Libros libro = null;
		try {
			abrirConexion();
			PreparedStatement srch = conexion.prepareStatement("select * from libreria.libros where id = ?");
			srch.setInt(1, id);
			ResultSet rs = srch.executeQuery();
			
			while(rs.next()) {
				libro = new Libros(rs.getInt("ID"), rs.getString("titulo"), 
						rs.getString("autor"), rs.getString("editorial"), 
						rs.getString("isbn"), rs.getInt("publicacion"), 
						rs.getDouble("precio"), rs.getString("descripcion"));

			}		
		
		} catch (SQLException e) {
			
			System.out.println("Error al consultar un libro");
			e.printStackTrace();
		} finally {
			cerrarConexion();
		}		
		return libro;
		
	}

	@Override
	public boolean eliminarLibro(int id) {
		boolean eliminado= false;
		try {
			abrirConexion();
			
			PreparedStatement pstEliminar = conexion.prepareStatement("delete from libreria.libros where ID = ?");
			//Posicion 1,2,3
			pstEliminar.setInt(1, id);
			
			int regEliminar = pstEliminar.executeUpdate();
			
			if(regEliminar == 1) {
				eliminado=true;
			}
	
		} catch (SQLException e) {
			System.out.println("Error al eliminar libreria");
			e.printStackTrace();
		}finally {
		
			cerrarConexion();
		}
		return eliminado;
	}


	@Override
	public boolean modificarPrecio(int id, double nuevoPrecio) {
		// update libros set PRECIO=? where=ID=?
		boolean modificado=false;
		try {
			abrirConexion();
			
			PreparedStatement pstUpdate = conexion.prepareStatement("update libros set precio=? where id = ?");
			//Posicion 1,2,3
			pstUpdate.setDouble(1, nuevoPrecio);
			pstUpdate.setInt(2, id);
			
			int regModificar = pstUpdate.executeUpdate();
			
			if(regModificar == 1) {
				modificado=true;
			}
	
		} catch (SQLException e) {
			System.out.println("Error al modificar Libreria");
			e.printStackTrace();
		}finally {
		
			cerrarConexion();
		}
		
		
		return modificado;
	}

	
	@Override
	public void abrirConexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/libreria","root","adminadmin");
		}catch(ClassNotFoundException e) {
			System.out.println("error en el driver");
			e.printStackTrace();
		}catch(SQLException e) {
			System.out.println("error en la conexion");
			e.printStackTrace();
		}
			
		}

	@Override
	public void cerrarConexion() {
		try {
			conexion.close();
		} catch (SQLException e) {
			System.out.println("Error al cerrar la conexion");
			e.printStackTrace();
		}
	

	}

	
	}
