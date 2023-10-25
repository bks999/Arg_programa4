/*
Escribir un programa en Java que juegue con el usuario a adivinar un número. La computadora
debe generar un número aleatorio entre 1 y 500, y el usuario tiene que intentar adivinarlo. Para
ello, cada vez que el usuario introduce un valor, la computadora debe decirle al usuario si el
número que tiene que adivinar es mayor o menor que el que ha introducido el usuario. Cuando
consiga adivinarlo, debe indicárselo e imprimir en pantalla el número de veces que el usuario
ha intentado adivinar el número. Si el usuario introduce algo que no es un número, se debe
controlar esa excepción e indicarlo por pantalla. En este último caso también se debe contar el
carácter fallido como un intento.
 */
package guia13ejercicio4;

import java.util.InputMismatchException;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Guia13Ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");

        int numeroAdivinar = (int) (Math.random() * 500);
        System.out.println("Adivine el numero. Tenes 20 intentos");
        int numUsuario = 0;
        int intentos = 20;
        boolean igual = false;
        do {
            try {
                numUsuario = sc.nextInt();
                if (numUsuario != numeroAdivinar) {
                    if (intentos==0){
                        System.out.println("No te quedan mas intentos! ");
                        break;
                    }
                    if (numUsuario > numeroAdivinar) {
                        igual = false;
                        intentos -= 1;
                        System.out.println("Fallaste, el numero es menor.");
                        System.out.println("Te quedan " + intentos + " intentos.");
                    } else if (numUsuario < numeroAdivinar) {
                        igual = false;
                        intentos -= 1;
                        System.out.println("Fallaste, el numero es mayor.");
                        System.out.println("Te quedan " + intentos + " intentos.");
                    }
                } else {
                    System.out.println("Adivinaste!");
                    igual=true;
                    break;
                }
            } catch (NullPointerException | IllegalArgumentException | InputMismatchException n) {
                sc.next();
                System.out.println("Error: " + n.fillInStackTrace());
                intentos -= 1;
                System.out.println("Te quedan " + intentos + " intentos.");
            }
        } while (igual==false);
    }
}
