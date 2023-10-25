/*
Se necesita una aplicación para una tienda en la cual queremos almacenar los distintos
productos que venderemos y el precio que tendrán. Además, se necesita que la
aplicación cuente con las funciones básicas.
Estas las realizaremos en el servicio. Como, introducir un elemento, modificar su precio,
eliminar un producto y mostrar los productos que tenemos con su precio (Utilizar
Hashmap). El HashMap tendrá de llave el nombre del producto y de valor el precio.
Realizar un menú para lograr todas las acciones previamente mencionadas.
 */
package ejercicio6guia10.main;

import ejercicio6guia10.service.ProductoService;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio6Guia10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        ProductoService p = new ProductoService();
//        String resp = " ";
//        do {
//            p.menu();
//            System.out.println("Desea continuar?(s/n)");
//            resp = sc.next();
//        }while(resp.equalsIgnoreCase("s"));
        p.menu();

    }

}
