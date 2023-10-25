/*
Dado un tiempo en minutos, calcular su equivalente en días y horas. Por 
ejemplo, si el usuario ingresa 1600 minutos, el sistema debe calcular su 
equivalente: 1 día, 2 horas.
 */
package EjerciciosExtraGuia3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
            Scanner leer = new Scanner (System.in);
            System.out.println("Ingrese un tiempo en minutos para calcular su equivalente en dias y horas");
            int min = leer.nextInt();
            double horasTotal = min / 60;
            double dias = horasTotal / 24;
            double horas = horasTotal%24;
            System.out.println("El tiempo ingresado equivale a " + dias + " dias y " + horas + " horas.");
            
    }
    
}
