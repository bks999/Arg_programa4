/*
 Diseñe una función que pida el nombre y la edad de N personas e imprima los 
datos de las personas ingresadas por teclado e indique si son mayores o menores 
de edad. Después de cada persona, el programa debe preguntarle al usuario si 
quiere seguir mostrando personas y frenar cuando el usuario ingrese la palabra 
“No”.
 */
package EjerciciosGuia4;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio2 {

    public static Scanner leer = new Scanner(System.in);

    public static void main(String[] args) {
        String opcion;
        do {
            datos();
            System.out.println("Desea ingresar mas datos? (S/N)");
            opcion = leer.next();

        } while ("s".equalsIgnoreCase(opcion));
    }

    public static void datos() {
        System.out.println("Ingrese los datos de la persona");

        System.out.println("Nombre");
        String nombre = leer.next();

        System.out.println("Edad");
        int edad = leer.nextInt();

        if (edad > 18) {
            System.out.println(nombre + " es MAYOR de edad.");
        } else {
            System.out.println(nombre + " es MENOR de edad.");
        }
    }
}
