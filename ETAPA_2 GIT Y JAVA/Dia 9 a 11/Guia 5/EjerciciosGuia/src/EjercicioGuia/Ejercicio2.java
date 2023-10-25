/*
Realizar un algoritmo que llene un vector de tamaño N con valores aleatorios y 
le pida al usuario un número a buscar en el vector. El programa mostrará dónde
se encuentra el numero y si se encuentra repetido

 */
package EjercicioGuia;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio2 {

    public static Scanner leer = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Ingrese el tamanio del vector");
        int n = leer.nextInt();
        int[] vector = new int[n];
        for (int i = 0; i < n; i++) {
            vector[i] = (int) Math.random();
        }

        System.out.println("Ingrese un numero para determinar si esta en el vector");
        int numero = leer.nextInt();

        int cont = 0;
        int posicion = 0;
        for (int i = 0; i < n; i++) {
            if (i == numero) {
                cont++;
                posicion = i;
                System.out.println("El numero ingresado se encuentra en la posicion:");
                System.out.println("Vector[" + posicion + "]");
            }
        }
        if (cont > 0) {
            System.out.println("Veces encontrado: " + cont );
        }else{
            System.out.println("No se encontro el numero ingresado.");
        }
    }

}
