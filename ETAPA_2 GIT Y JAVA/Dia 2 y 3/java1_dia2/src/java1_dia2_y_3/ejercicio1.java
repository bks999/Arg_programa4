/*
 Escribir un programa que pida dos números enteros por teclado y calcule la suma de los dos. 
El programa deberá después mostrar el resultado de la suma
 */
package java1_dia2_y_3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class ejercicio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        int num1;
        int num2;
        Scanner leer=new Scanner(System.in);
        System.out.println("Ingrese dos numeros enteros");
        num1= leer.nextInt();
        num2= leer.nextInt();
        
        System.out.println("Los numeros ingresados son: " + num1 + " y " + num2);
        
        int suma= num1+num2;
        
        System.out.println("La suma de los dos numeros es " + suma);
    }
    
}
