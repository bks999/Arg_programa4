/*
 Crea una aplicación que a través de una función nos convierta una cantidad de
euros introducida por teclado a otra moneda, estas pueden ser a dólares, yenes 
o libras. La función tendrá como parámetros, la cantidad de euros y la moneda a
convertir que será una cadena, este no devolverá ningún valor y mostrará un 
mensaje indicando el cambio (void).

El cambio de divisas es:
* 0.86 libras es un 1 €
* 1.28611 $ es un 1 €
* 129.852 yenes es un 1 €

 */
package EjerciciosGuia4;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio3 {

    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Ingrese un valor de euros para convertirlo en otras divisas");
        double euros = leer.nextDouble();

        divisas(euros);
    }

    public static String opcion() {
        System.out.println("Elija la divisa a convertir:");
        System.out.println("A - LIBRAS");
        System.out.println("B - DOLARES");
        System.out.println("C - YENES");
        String respuesta = leer.next();
        respuesta = respuesta.toUpperCase();
        return respuesta;
    }

    public static void divisas(double euros) {

        switch (opcion()) {
            case "A":
                double libras = euros * 0.86;
                System.out.println("Libras: " + libras);
                break;
            case "B":
                double dolar = euros * 1.28611;
                System.out.println("Dolares: " + dolar);
                break;
            case "C":
                double yenes = euros * 129.852;
                System.out.println("Yenes: " + yenes);
                break;
        }
    }
}
