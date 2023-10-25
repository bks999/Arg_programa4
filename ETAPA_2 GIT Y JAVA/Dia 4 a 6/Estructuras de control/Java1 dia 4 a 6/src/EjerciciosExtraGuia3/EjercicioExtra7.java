/*
 Realice un programa que calcule y visualice el valor máximo, el valor mínimo 
y el promedio de n números (n>0). El valor de n se solicitará al principio del 
programa y los números serán introducidos por el usuario. Realice dos versiones 
del programa, una usando el bucle “while” y otra con el bucle “do - while”.
 */
package EjerciciosExtraGuia3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int numMax = 0;
        int numMin = 0;
        int suma = 0;
        int num;
        int cont = 0;
        while (suma < 100) {
            System.out.println("Ingrese un numero");
            num = sc.nextInt();
            cont++;
            if (Math.max(numMax, num) <= num) {
                numMax = num;
                suma += num;
            }
            if (numMin == 0) {
                numMin = num;
                continue;
            }
            if (Math.min(numMin, num) > num) {
                numMin = num;
                suma += num;
            }
        }
        System.out.println("El valor maximo ingresado es: " + numMax);
        System.out.println("El valor minimo ingresado es: " + numMin);
        System.out.println("El promedio de los numeros ingresados es: " + (suma / cont));
    }

}
