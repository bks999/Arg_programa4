/*
Escribir un programa que pida una frase y la muestre toda en mayúsculas y después toda en minúsculas. 
Nota: investigar la función toUpperCase() y toLowerCase() en Java.
 */
package java1_dia2_y_3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class ejercicio3 {


    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese una frase:");
        String frase;
        frase = leer.nextLine();
        String fraseMayusc;
        fraseMayusc = frase.toUpperCase();
        String fraseMinusc;
        fraseMinusc = frase.toLowerCase();
        System.out.println(fraseMayusc);      
        System.out.println(fraseMinusc);  
    }
    
}
