/*
Escriba un programa que averigüe si dos vectores de N enteros son iguales 
(la comparación deberá detenerse en cuanto se detecte alguna diferencia entre 
los elementos).
 */
package EjerciciosExtra;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra2 {

    public static Scanner insert = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        /*System.out.println("Ingrese el tamanio del vector");
        int n = insert.nextInt();
        int[] vector1 = new int[n];
        int[] vector2 = new int[n]; 

        for (int i = 0; i < n; i++) {
            vector1[i] = (int) (Math.random() * 10);
            vector2[i] = (int) (Math.random() * 10);
        }*/
        
        int vector1[] = {1,2,4,3,4,6};
        int vector2[] = {6,4,4,3,2,1}; 
        Arrays.sort(vector1);
        Arrays.sort(vector2);
        int n = 6;
        for (int i = 0; i < n; i++) {
            System.out.print("[" + vector1[i] + "]");
        }
        System.out.println("");
        for (int i = 0; i < n; i++) {
            System.out.print("[" + vector2[i] + "]");
        }
        System.out.println("");
        int cont = 0;
        
        for (int i = 0; i < n; i++) {
          
                if (vector1[i] == vector2[i]) {
                    cont++;
                }
        }
        System.out.println(cont);
        if (cont == n) {
            System.out.println("Los vectores 1 y 2 tienen los mismos valores");
        } else {
            System.out.println("Los vectores 1 y 2 no tienen los mismos valores");
        }
    }

}


/* public static void main(String[] args) {
        int vector1[]= {2,4,8,7,9,10};
        int vector2[]= {10,4,8,7,9,2};
        int cantidadElementos = 6;
        System.out.println("Comparación de dos vectores.");
        System.out.println("El vector1 tiene los siguientes elementos: ");
        for(int i=0;i<cantidadElementos;i++){
            System.out.print(" "+vector1[i]+" ");
        }
        System.out.println(" ");
        System.out.println("El vector2 tiene los siguientes elementos: ");
        for(int i=0;i<cantidadElementos;i++){
            System.out.print(" "+vector2[i]+" ");
        }
            System.out.println(" ");

        int contador = 0;
        for(int i=0;i<6;i++){
            for(int j=0;j<6;j++){
                if(vector1[i]==vector2[j]){
                    contador++;
                }
            }
        }
        System.out.println("Contador= "+contador);
        System.out.println("cantidadElementos="+cantidadElementos);
        if (contador == cantidadElementos){
            System.out.println("Los vactores son iguales.");
        }
        else{
            System.out.println("Los vectores no son iguales.");
        }
        */
        
        
        
        
        
    