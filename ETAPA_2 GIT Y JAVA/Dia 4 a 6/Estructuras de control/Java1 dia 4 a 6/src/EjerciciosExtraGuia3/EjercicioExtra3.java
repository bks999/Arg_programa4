/*
Elaborar un algoritmo en el cuál se ingrese una letra y se detecte si se trata 
de una vocal. Caso contrario mostrar un mensaje. Nota: investigar la función
equals() de la clase String.

 */
package EjerciciosExtraGuia3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                Scanner leer = new Scanner (System.in);
                System.out.println("Ingrese una letra para determinar si es una vocal");
                int largo;
                do {
                String letra = leer.nextLine();
                largo = letra.length();
                if (largo == 1) {
                    if ((letra.equalsIgnoreCase("a")) || (letra.equalsIgnoreCase("e")) || (letra.equalsIgnoreCase("i")) || (letra.equalsIgnoreCase("o")) || (letra.equalsIgnoreCase("u"))) {
                        System.out.println("La letra ingresada ES UNA VOCAL");
                        break;
                }else {
                        System.out.println("La letra ingresada NO ES UNA VOCAL");
                        break;
                    }
                }
                if (largo != 1) {
                    System.out.println("Error. Ingrese solo una(1) letra");
                }
                 } while (largo != 1);
                }
    }

