/*
Se necesita una aplicación para una tienda en la cual queremos almacenar los distintos
productos que venderemos y el precio que tendrán. Además, se necesita que la
aplicación cuente con las funciones básicas.
Estas las realizaremos en el servicio. Como, introducir un elemento, modificar su precio,
eliminar un producto y mostrar los productos que tenemos con su precio (Utilizar
Hashmap). El HashMap tendrá de llave el nombre del producto y de valor el precio.
Realizar un menú para lograr todas las acciones previamente mencionadas.
 */
package ejercicio6guia10.service;

import ejercicio6guia10.entities.Productos;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class ProductoService {

    HashMap<String, Double> productos = new HashMap<>();
    Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public void agregarProducto() {
        String respuesta = " ";
        do {
            System.out.println("Ingrese el nombre del producto");
            String nombre = sc.next();
            System.out.println("Ingrese el valor del producto por unidad");
            double precio = sc.nextDouble();
            Productos p = new Productos(nombre, precio);
            productos.put(p.getNombre(), p.getPrecio());
            do {
                System.out.println("Deseas agregar otro producto? (si/no)");
                respuesta = sc.next();
                if (!respuesta.equalsIgnoreCase("si") && !respuesta.equalsIgnoreCase("no")) {
                    System.out.println("La respuesta es incorrecta...");
                }
            } while (!respuesta.equalsIgnoreCase("si") && !respuesta.equalsIgnoreCase("no"));
        } while (respuesta.equalsIgnoreCase("si"));
    }

    public void mostrarProductos() {
        int cont = 0;
        for (Map.Entry<String, Double> aux : productos.entrySet()) {
            cont++;
            String key = aux.getKey();
            Double value = aux.getValue();
            System.out.println("Producto " + cont + ": " + key + " /// Precio: " + value);
        }
    }

    public void modificarPrecio() {
        boolean reconocido = true;
        do {
            System.out.println("Ingrese el producto que desee modificar el precio");
            String prodMod = sc.next();
            for (Map.Entry<String, Double> entry : productos.entrySet()) {
                String key = entry.getKey();
                Double value = entry.getValue();
                if (key.equalsIgnoreCase(prodMod)) {
                    System.out.println("Ingrese el nuevo valor del producto");
                    entry.setValue(sc.nextDouble());
                    reconocido = false;
                }
            }
            if (reconocido) {
                System.out.println("No se ha encontrado el producto ingresado...");
            }
        } while (reconocido);
        System.out.println("---------------------------------");
        mostrarProductos();
    }

    public void eliminarProducto() {
        boolean reconocido = true;
        do {
            System.out.println("Ingrese el producto que desee eliminar");
            String prodRemove = sc.next();
            for (Map.Entry<String, Double> entry : productos.entrySet()) {
                String key = entry.getKey();
                Double value = entry.getValue();
                if (key.equalsIgnoreCase(prodRemove)) {
                    productos.remove(key);
                    reconocido = false;
                }
            }
            if (reconocido) {
                System.out.println("No se ha encontrado el producto ingresado...");
            }
        } while (reconocido);
        System.out.println("---------------------------------");
        mostrarProductos();
    }

    public void menu() {
        String resp = " ";
        int op;
        do {
            System.out.println("============= MENU =============");
            System.out.println("== [ 1 ]    Ingresar un nuevo producto");
            System.out.println("== [ 2 ]    Modificar precio");
            System.out.println("== [ 3 ]    Eliminar producto");
            System.out.println("== [ 4 ]    Mostrar lista de productos");
            System.out.println("== [ 5 ]    Salir del menu");
            System.out.println("================================");

                System.out.println("Ingrese una opcion");
                op = sc.nextInt();
                switch (op) {
                    case 1:
                        agregarProducto();
                        break;
                    case 2:
                        modificarPrecio();
                        break;
                    case 3:
                        eliminarProducto();
                        break;
                    case 4:
                        mostrarProductos();
                        break;
                    case 5:
                        System.out.println("Desea finalizar la aplicacion? (si/no)");
                        resp = sc.next();
                        if (resp.equalsIgnoreCase("si")) {
                            break;
                        }
                        break;
                    default:
                        System.out.println("Error. Vuelve a intentarlo");
                        break;
                }
            } while (op > 0 && op <= 5 && resp.equalsIgnoreCase("no"));
    }
}
