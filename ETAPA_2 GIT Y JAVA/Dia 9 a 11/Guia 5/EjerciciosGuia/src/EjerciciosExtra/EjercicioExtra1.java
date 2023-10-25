/*
Realizar un algoritmo que calcule la suma de todos los elementos de un vector
de tamaño N, con los valores ingresados por el usuario.
 */
package EjerciciosExtra;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra1 {
    public static Scanner insert = new Scanner (System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Ingrese el tamanio del vector");
        int n = insert.nextInt();
        int [] vector = new int [n];
        int suma = 0;
        for (int i=0; i<n;i++) {
        System.out.println("Ingrese un valor a vector[" + i + "]");
        vector[i]=insert.nextInt();
        suma += vector[i];
        }
        System.out.println("La suma de todos los elementos del vector es: " + suma);
    }
    
}
