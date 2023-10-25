/*
 Realice un programa que compruebe si una matriz dada es antisimétrica. 
Se dice que una matriz A es antisimétrica cuando ésta es igual a su propia 
traspuesta, pero cambiada de signo. Es decir, A es antisimétrica si A = -AT. 
La matriz traspuesta de una matriz A se denota por AT y se obtiene cambiando
sus filas por columnas (o viceversa).

 */
package EjercicioGuia;

import static java.lang.Math.abs;

/**
 *
 * @author Sol
 */
public class Ejercicio5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int[][] matrizA = new int[3][3];
        int[][] matrizAT = new int[3][3];
        System.out.println("Matriz A:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                matrizA[i][j] = (int) (Math.random() * 20 + (-10));

                System.out.print("[" + matrizA[i][j] + "]");
            }
            System.out.println("");
        }
        System.out.println("");
        System.out.println("Matriz :");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                matrizAT[i][j] = (matrizA[j][i])*(-1);

                System.out.print("[" + matrizAT[i][j] + "]");
            }
            System.out.println("");
        }
        int cont = 0;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                int k = abs(matrizAT[j][i]);
                if (((matrizAT[j][i])*(-1)) != (matrizA[i][j])) {
                    cont += 1;
                }
            }
        }
        if (cont > 0) {
            System.out.println("La matriz A no es antisimetrica");
        } else {
            System.out.println("La matriz A es antisimetrica");
        }
    }
}
