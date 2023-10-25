/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EjerciciosGuia4;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        int num1;
        int num2;
        int opc;

        do {
            System.out.println("Ingrese dos numeros");
            num1 = leer.nextInt();
            num2 = leer.nextInt();
            System.out.println("Operaciones Matematicas");
            System.out.println(" ");
            System.out.println("MENU");
            System.out.println("1)Sumar");
            System.out.println("2)Restar");
            System.out.println("3)Multiplicar");
            System.out.println("4)Dividir");
            System.out.println("5)SALIR");
            System.out.println("Elije una opcion");

            opc = leer.nextInt();
            switch (opc) {
                case 1:
                    System.out.println(suma(num1, num2));
                    break;
                case 2:
                    System.out.println(resta(num1, num2));
                    break;
                case 3:
                    System.out.println(multi(num1, num2));
                    break;
                case 4:
                    System.out.println(divi(num1, num2));
                    break;
                case 5:
                    System.out.println("ADIOS");

                    break;
                default:
                    System.out.println("La opcion ingresada no es correcta");
            }

        } while (opc != 5);

    }

    public static int suma(int num1, int num2) {

        return num1 + num2;
    }

    public static int resta(int num1, int num2) {

        return num1 - num2;
    }

    public static int multi(int num1, int num2) {

        return num1 * num2;
    }

    public static double divi(int num1, int num2) {

        return (double) num1 / num2;
    }
}
