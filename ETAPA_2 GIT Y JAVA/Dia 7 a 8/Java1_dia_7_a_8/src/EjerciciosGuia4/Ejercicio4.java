/*
 Crea una aplicación que nos pida un número por teclado y con una función se lo
pasamos por parámetro para que nos indique si es o no un número primo, debe 
devolver true si es primo, sino false.
Un número primo es aquel que solo puede dividirse entre 1 y sí mismo. 
Por ejemplo: 25 no es primo, ya que 25 es divisible entre 5, sin embargo, 
17 si es primo.

 */
package EjerciciosGuia4;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio4 {

    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("INGRESA UN NUMERO ENTERO PARA DETERMINAR SI ES PRIMO");
        System.out.println("INGRESA UN VALOR ENTERO ");
        Scanner leer = new Scanner(System.in);
        int num1 = leer.nextInt();
        boolean primo = primo(num1);
        System.out.println(primo);
    }

    public static boolean primo(int num1) {
        boolean variable;
        /*if (((num1%1==0) && (num1%2!=0)&&(num1%num1==0))){
         variable =true;
         System.out.println("EL VALOR INGRESADO " + num1 + " ES PRIMO");
         
     } else {
        variable =false;
         System.out.println("el valor no es primo");
     }*/
        int contador = 0;
        for (int i = 1; i <= num1; i++) {
            if (num1 % i == 0) {
                contador++;

            }

        }
        if (contador > 2) {

            variable = false;
        } else {
            variable = true;
            if (num1 == 1) {
                variable = false;

            }
        }
        return variable;

    }

}
