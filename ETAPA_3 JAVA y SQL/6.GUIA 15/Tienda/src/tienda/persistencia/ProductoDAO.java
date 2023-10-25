/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tienda.persistencia;

import java.util.ArrayList;
import java.util.Collection;
import tienda.entidades.Producto;

/**
 *
 * @author Sol
 */
public final class ProductoDAO extends DAO {

    public Collection<Producto> listarProducto() throws Exception {
        try {
            String sql = "SELECT codigo,nombre, precio, codigo_fabricante FROM producto ";

            consultarBase(sql);

            Producto producto = null;
            Collection<Producto> producto1 = new ArrayList();
            while (resultado.next()) {
                producto = new Producto();
                producto.setCodigo(resultado.getInt(1));
                producto.setNombre(resultado.getString(2));
                producto.setPrecio(resultado.getDouble(3));
                producto.setCodigoFabricante(resultado.getInt(4));
                producto1.add(producto);
            }
            desconectarBase();
            return producto1;
        } catch (Exception e) {
            e.printStackTrace();
            desconectarBase();
            throw new Exception("Error de sistema");
        }
    }

    public Collection buscarProducto(String producto) throws Exception {
        try {
            String sql = "SELECT codigo,nombre, precio, codigo_fabricante FROM producto WHERE nombre LIKE '%" + producto + "%'";

            consultarBase(sql);
            Collection<Producto> lista = new ArrayList();
            Producto p = null;
            while (resultado.next()) {
                p = new Producto();
                p.setCodigo(resultado.getInt(1));
                p.setNombre(resultado.getString(2));
                p.setPrecio(resultado.getDouble(3));
                p.setCodigoFabricante(resultado.getInt(4));
                lista.add(p);
            }
            desconectarBase();
            return lista;
        } catch (Exception e) {
            desconectarBase();
            throw e;
        }
    }

    public Collection nombrePrecioProdBarato() throws Exception {
        try {
            String sql = "SELECT codigo,nombre, precio, codigo_fabricante FROM producto ORDER BY precio ASC LIMIT 1";

            consultarBase(sql);
            Collection<Producto> lista = new ArrayList();
            Producto p = null;
            while (resultado.next()) {
                p = new Producto();
                p.setCodigo(resultado.getInt(1));
                p.setNombre(resultado.getString(2));
                p.setPrecio(resultado.getDouble(3));
                p.setCodigoFabricante(resultado.getInt(4));
                lista.add(p);
            }
            desconectarBase();
            return lista;
        } catch (Exception e) {
            desconectarBase();
            throw e;
        }
    }
    
    public void ingresarProducto(Producto producto) throws Exception {
        try {
            if (producto == null) {
                throw new Exception("Debe ingresar un producto");
            }

            String sql = "INSERT INTO Producto (nombre,precio,codigo_fabricante)"
                    + "VALUES ( '" + producto.getNombre() + "' , '" + producto.getPrecio()+ "' , '" + producto.getCodigoFabricante()+ "' );";

            insertarModificarEliminar(sql);
        } catch (Exception e) {
            throw e;
        } finally {
            desconectarBase();
        }
    }
}
