/*
Crear una función que rellene un vector con números aleatorios, pasándole un 
arreglo por parámetro. Después haremos otra función o procedimiento que 
imprima el vector.
 */
package EjerciciosExtra;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra3 {
    public static Scanner insert = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Ingrese el tamanio del vector");
        int n = insert.nextInt();
       int [] vector = new int[n]; 
       
       rellenar(vector,n);
       imprimir(vector,n);
    }
    public static void rellenar(int vector[], int n) {
        
       for (int i=0; i<n; i++) {
           vector[i] = (int) (Math.random() * 10);
       }
    }
    
    public static void imprimir(int vector[], int n) {
        for (int i=0; i<n; i++) {
            System.out.print("[" + vector[i] + "]");
        }
        System.out.println("");
    }
}
