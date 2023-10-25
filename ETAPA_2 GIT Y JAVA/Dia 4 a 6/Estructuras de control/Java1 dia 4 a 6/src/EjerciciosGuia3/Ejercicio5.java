package EjerciciosGuia3;


import java.util.Scanner;

/*
Escriba un programa en el cual se ingrese un valor límite positivo, y a 
continuación solicite números al usuario hasta que la suma de los números 
introducidos supere el límite inicial.
 */

/**
 *
 * @author Sol
 */
public class Ejercicio5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese un valor limite positivo");
        int numLimite = leer.nextInt();
        int suma = 0;
        while (suma < numLimite) {
            System.out.println("Ingrese un numero para sumar");
            int num = leer.nextInt();
            suma += num;    
        }
        
    }
    
}
