/*
Diseñar un programa que lea una serie de valores numéricos enteros desde el teclado
y los guarde en un ArrayList de tipo Integer. La lectura de números termina cuando se
introduzca el valor -99. Este valor no se guarda en el ArrayList. A continuación, el
programa mostrará por pantalla el número de valores que se han leído, su suma y su
media (promedio).
 */
package ejercicioextra1guia10;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra1Guia10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        ArrayList<Integer> listaNum = new ArrayList<>();
        Integer valor;
        int suma = 0;
        do {
            System.out.println("Ingrese un nuevo numero a la lista");
            valor = sc.nextInt();
            if (valor != -99) {
                listaNum.add(valor);
                suma += valor;
            }
        } while (valor != -99);
        System.out.println("------------------------");
        System.out.println("La suma total de todos los numeros del ArrayList: " + suma);
        System.out.println("El promedio es: " + ((double) suma / listaNum.size()));
    }
}
