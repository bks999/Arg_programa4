/*
Escriba un programa que lea números enteros. Si el número es múltiplo de cinco debe detener la lectura y 
mostrar la cantidad de números leídos, la cantidad de números pares y la cantidad de números impares.
Al igual que en el ejercicio anterior los números negativos no deben sumarse. Nota: recordar el uso de 
la sentencia break.
 */
package EjerciciosExtraGuia3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra8 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        int par = 0;
        int impar = 0;
        int cont = 0;

        do {
            System.out.println("Ingrese un numero");
            num = sc.nextInt();
            cont++;
            if (num < 0) {
                System.out.println(num + " es un numero negativo.");
                cont--;
            }
            if (num % 2 == 0 && num > 0) {
                par++;
            } else if (!(num % 2 == 0) && num > 0) {
                impar++;
            }
            if (num % 5 == 0) {
                break;
            }
        } while (cont > 0);
        System.out.println("Se han ingresado " + cont + " en total.");
        System.out.println("Se han ingresado " + par + " numeros pares.");
        System.out.println("Se han ingresado " + impar + " numeros impares.");

    }

}
