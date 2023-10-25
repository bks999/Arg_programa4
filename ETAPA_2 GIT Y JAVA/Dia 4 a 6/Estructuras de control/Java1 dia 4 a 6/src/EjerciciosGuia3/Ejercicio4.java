package EjerciciosGuia3;


import java.util.Scanner;

/*
Escriba un programa que pida una frase o palabra y valide si la primera letra
de esa frase es una ‘A’. Si la primera letra es una ‘A’, se deberá de imprimir 
un mensaje por pantalla que diga “CORRECTO”, en caso contrario, se deberá
imprimir “INCORRECTO”. Nota: investigar la función Substring y equals() de Java.

 */

/**
 *
 * @author Sol
 */
public class Ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese una frase para determinar si la primera letra es A");
        String frase = leer.nextLine();
        String letra = frase.substring(0,1);
        letra=letra.toUpperCase();
        if(letra.equals("A")) {
            System.out.println("CORRECTO");
        }else{
            System.out.println("INCORRECTO");
        }
       
    }
    
}
