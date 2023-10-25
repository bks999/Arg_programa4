/*
Realizar un algoritmo que llene un vector con los 100 primeros números enteros 
y los muestre por pantalla en orden descendente.

 */
package EjercicioGuia;

/**
 *
 * @author Sol
 */
public class Ejercicio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int [] vector = new int [100];
        int contador = 100;
        for (int i=0; i<100;i++) {
            vector [i]= contador - i ;
            System.out.println("[" + i + "]" + "=" + vector[i]);
        }
    }
    
}
