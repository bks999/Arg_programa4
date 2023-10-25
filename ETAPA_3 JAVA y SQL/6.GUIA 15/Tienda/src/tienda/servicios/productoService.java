package tienda.servicios;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Scanner;
import tienda.entidades.Producto;
import tienda.persistencia.ProductoDAO;

/*
Las consultas a realizar sobre la BD son las siguientes:
a) Lista el nombre de todos los productos que hay en la tabla producto.
b) Lista los nombres y los precios de todos los productos de la tabla producto.
c) Listar aquellos productos que su precio esté entre 120 y 202.
d) Buscar y listar todos los Portátiles de la tabla producto.
e) Listar el nombre y el precio del producto más barato.
f) Ingresar un producto a la base de datos.
g) Ingresar un fabricante a la base de datos
h) Editar un producto con datos a elección.
 */
/**
 *
 * @author Sol
 */
public class productoService {

    private ProductoDAO daoProd;
    private Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public productoService() {
        this.daoProd = new ProductoDAO();
    }

    public Collection<Producto> listaProducto() throws Exception {
        try {
            Collection<Producto> productos = daoProd.listarProducto();
            return productos;
        } catch (Exception e) {
            throw e;
        }
    }

    public void imprimirProductos() throws Exception {
        try {
            //Listamos los productos
            Collection<Producto> productos = listaProducto();
            //Imprimimos los productos
            if (productos.isEmpty()) {
                throw new Exception("No existen productos para imprimir");
            } else {
                for (Producto p : productos) {
                    System.out.println(p);
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void imprimirNombres() throws Exception {
        try {
            Collection<Producto> productos = listaProducto();
            if (productos.isEmpty()) {
                throw new Exception("No hay nombres para imprimir");
            } else {
                for (Producto p : productos) {
                    System.out.println(p.getCodigo() + " - " + p.getNombre());
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void imprimirNombresPrecios() throws Exception {
        try {
            Collection<Producto> productos = listaProducto();
            if (productos.isEmpty()) {
                throw new Exception("No hay nombres para imprimir");
            } else {
                for (Producto p : productos) {
                    System.out.println("Producto " + p.getCodigo() + ": " + p.getNombre() + " / precio: $" + p.getPrecio());
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void productoPrecio() throws Exception {
        try {
            Collection<Producto> productos = listaProducto();
            if (productos.isEmpty()) {
                throw new Exception("No hay nombres para imprimir");
            } else {
                for (Producto p : productos) {
                    if (p.getPrecio() > 120 & p.getPrecio() < 202) {
                        System.out.println("Produto: " + p.getNombre() + " / Precio: " + p.getPrecio());
                    }
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void buscarProducto(String p) throws Exception {
        try {
            if (p == null) {
                throw new Exception("No es un nombre compatible");
            }
            Collection<Producto> listaP = daoProd.buscarProducto(p);
            if (listaP.isEmpty()) {
                throw new Exception("No hay productos encontrados");
            } else {
                for (Producto pp : listaP) {
                    System.out.println(pp);
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void prodMasBarato() throws Exception {
        try {
            Collection<Producto> listaP = daoProd.nombrePrecioProdBarato();
            if (listaP.isEmpty()) {
                throw new Exception("No hay productos encontrados");
            } else {
                for (Producto pp : listaP) {
                    System.out.println("Producto: " + pp.getNombre() + " / " + "Precio: $" + pp.getPrecio());
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }

    public void crearProducto() throws Exception {
        Producto p = new Producto();
        System.out.println("Ingrese el nombre del nuevo producto");
        String nombre = sc.next();
        System.out.println("Ingrese el precio");
        double precio = sc.nextDouble();
        System.out.println("Ingrese el codigo del fabricante");
        System.out.println("1 - Asus");
        System.out.println("2 - Lenovo");
        System.out.println("3 - Hewlett-Packard");
        System.out.println("4 - Samsung");
        System.out.println("5 - Seagate");
        System.out.println("6 - Crucial");
        System.out.println("7 - Gigabyte");
        System.out.println("8 - Huawei");
        System.out.println("9 - Xiaomi");
        int codigoFab = 0;
        do {
            codigoFab = sc.nextInt();
            if (codigoFab < 1 || codigoFab > 9) {
                System.out.println("Codigo erroneo, vuelva a intentarlo");
            }
        } while (codigoFab < 1 || codigoFab > 9);
        
        p.setNombre(nombre);
        p.setPrecio(precio);
        p.setCodigoFabricante(codigoFab);
        
        daoProd.ingresarProducto(p);
        
    }
    
   
}

