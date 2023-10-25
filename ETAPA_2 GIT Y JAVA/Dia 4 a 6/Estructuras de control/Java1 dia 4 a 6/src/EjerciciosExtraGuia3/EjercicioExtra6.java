package EjerciciosExtraGuia3;

import java.util.Scanner;

/*
Leer la altura de N personas y determinar el promedio de estaturas que se encuentran por debajo de 1.60 mts. y el promedio de estaturas en general.
 */

/**
 *
 * @author Sol
 */
public class EjercicioExtra6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese el numero de personas entrevistadas");
        int personas = leer.nextInt();
        int contBajos = 0;
        int cont = 0;
        double suma = 0;
        double sumaBajos = 0;
        for (int i = 1; i <= personas; i++) {
            System.out.println("Altura de la persona numero " + i + ":");
            double altura = leer.nextDouble();
            cont ++;
            suma += altura;       
            if (altura < 1.60) {
                contBajos ++;
                sumaBajos += altura;
            } 
        }
        System.out.println("Del total de entrevistados, " + contBajos + " esta/n por debajo de 1.60 mts. El promedio es de " + (sumaBajos/contBajos) + " mts.");
        System.out.println("Se entrevistaron " + cont + " personas, y el promedio de altura es " + (suma/cont) + " mts.");
    }
    
}
