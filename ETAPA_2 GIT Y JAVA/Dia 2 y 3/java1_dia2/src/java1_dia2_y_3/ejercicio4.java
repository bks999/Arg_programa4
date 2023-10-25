/*
Dada una cantidad de grados centígrados se debe mostrar su equivalente en grados 
Fahrenheit. La fórmula correspondiente es: F = 32 + (9 * C / 5).
 */
package java1_dia2_y_3;

/**
 *
 * @author Sol
 */
public class ejercicio4 {

 
    public static void main(String[] args) {
       double c;
       double f;
       c = 22;
       f= 32 + (9* c/5);
       
        System.out.println(c + " grados C equivalen a " + f + " grados F");
          
    }
    
}
