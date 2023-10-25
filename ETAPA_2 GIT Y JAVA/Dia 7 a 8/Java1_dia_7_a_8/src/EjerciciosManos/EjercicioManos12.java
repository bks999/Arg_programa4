/*
 Crea un procedimiento EsMultiplo que reciba los dos números pasados por el
usuario, validando que el primer número múltiplo del segundo e imprima si el 
primer número es múltiplo del segundo, sino informe que no lo son.

 */
package EjerciciosManos;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioManos12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese dos numeros para determinar si son multiplos");
        int num1 = leer.nextInt();
        int num2 = leer.nextInt();
        
        multiplo(num1,num2);
    }
    
    public static void multiplo(int num1,int num2) {
        
        if ((num2 % num1)==0) {
            System.out.println(num2 + " es multiplo de " + num1);
        } else {
            System.out.println(num2 + " no es multiplo de " + num1);
        }
    } 
}
