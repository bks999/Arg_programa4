/*
Construya un programa que lea 5 palabras de mínimo 3 y hasta 5 caracteres y, 
a medida que el usuario las va ingresando, construya una “sopa de letras para
niños” de tamaño de 20 x 20 caracteres. Las palabras se ubicarán todas en orden 
horizontal en una fila que será seleccionada de manera aleatoria. Una vez 
concluida la ubicación de las palabras, rellene los espacios no utilizados 
con un número aleatorio del 0 al 9. Finalmente imprima por pantalla la sopa 
de letras creada.
Nota: Para resolver el ejercicio deberá investigar cómo se utilizan las 
siguientes funciones de Java substring(), Length() y Math.random().

 */
package EjerciciosExtra;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra6 {

    public static Scanner insert = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String palabra1;
        String palabra2;
        String palabra3;
        String palabra4;
        String palabra5;
        System.out.println("Ingrese cinco palabras de minimo 3 y hasta 5 caracteres");
        do {
            System.out.println("Palabra 1");
            palabra1 = insert.nextLine();
        } while ((palabra1.length() <= 3) && (palabra1.length() >= 5));
        do {
            System.out.println("Palabra 2");
            palabra2 = insert.nextLine();
        } while ((palabra2.length() <= 3) && (palabra2.length() >= 5));
        do {
            System.out.println("Palabra 3");
            palabra3 = insert.nextLine();
        } while ((palabra3.length() <= 3) && (palabra3.length() >= 5));
        do {
            System.out.println("Palabra 4");
            palabra4 = insert.nextLine();
        } while ((palabra4.length() <= 3) && (palabra4.length() >= 5));
        do {
            System.out.println("Palabra 5");
            palabra5 = insert.nextLine();
        } while ((palabra5.length() <= 3) && (palabra5.length() >= 5));

        String[][] matriz = new String[20][20];

        for (int j = 0; j < 20; j++) {
            int k = palabra1.length();
            int i = (int)Math.random()*20;
            if (j<k) {
            matriz[i][j]= palabra1.substring(j, (j+1));
            
            }else{
                int aleatorio = (int) Math.random()*10;
                matriz[i][j]=Integer.toString(aleatorio);
            }
            System.out.print(matriz[i][j]);
        }
    }
}


