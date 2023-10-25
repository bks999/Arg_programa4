package EjerciciosGuia3;


import java.util.Scanner;

/*
 Crear un programa que dado un número determine si es par o impar.
 */


public class Ejercicio1 {

   
    public static void main(String[] args) {
       Scanner insert = new Scanner (System.in);
        System.out.println("Ingrese un numero para determinar si es par o impar:");
        int num = insert.nextInt();
        
        if (num % 2 == 0) {
            System.out.println("El numero ingresado es PAR");
        } else {
            System.out.println("El numero ingresado es IMPAR");
        }
               
    }
    
}
