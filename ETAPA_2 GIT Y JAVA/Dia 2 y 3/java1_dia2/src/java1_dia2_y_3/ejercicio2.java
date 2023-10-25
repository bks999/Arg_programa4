/*
Escribir un programa que pida tu nombre, lo guarde en una variable y lo muestre por pantalla.

 */
package java1_dia2_y_3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class ejercicio2 {

    
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        String nombre;
        System.out.println("Ingrese un nombre");
        nombre = leer.next();
        System.out.println("El nombre ingresado es: " + nombre);
    }
    
}
