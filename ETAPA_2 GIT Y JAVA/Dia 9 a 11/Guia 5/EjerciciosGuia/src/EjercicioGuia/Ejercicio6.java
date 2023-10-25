/*
Un cuadrado mágico 3 x 3 es una matriz 3 x 3 formada por números del 1 al 9 
donde la suma de sus filas, sus columnas y sus diagonales son idénticas. Crear
un programa que permita introducir un cuadrado por teclado y determine si este
cuadrado es mágico o no. El programa deberá comprobar que los números 
introducidos son correctos, es decir, están entre el 1 y el 9.

 */
package EjercicioGuia;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio6 {

    public static Scanner insert = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int[][] matriz = new int[3][3];

        for (int i = 0; i < 3; i++) { //Rellenar matriz
            for (int j = 0; j < 3; j++) {
                System.out.println("Ingrese un valor del 1 al 9 en matriz[" + i + "]" + "[" + j + "]");
                matriz[i][j] = insert.nextInt();
            }
        }
        int sumaFila = 0;
        int sumaColumna = 0;
        int sumaFC = 0;
        int contFC = 0;
        for (int i = 0; i < 3; i++) { //sumar filas y columnas
            for (int j = 0; j < 3; j++) {
                sumaFila += matriz[i][j];
                sumaColumna += matriz[j][i];
            }
            sumaFC = sumaFila;
            if (sumaFila != sumaColumna) {
                contFC += 1;
            }
            sumaFila = sumaColumna = 0;
        }
        int sumaDiag = 0;
        for (int i = 0; i < 3; i++) { //sumar diagonales
            for (int j = 0; j < 3; j++) {
                if (i == j) {
                    sumaDiag += matriz[i][j];
                }
            }
        }
        if ((contFC == 0) && (sumaFC == sumaDiag)) {
            System.out.println("La matriz es un cuadrado magico");
        } else {
            System.out.println("La matriz NO es un cuadrado magico");
        }
    }
}
