/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package operacionapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class OperacionApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        Operacion op = new Operacion();
        op.crearOperacion();

//        System.out.println("Ingrese la operacion deseada");
//        System.out.println("1 - SUMAR");
//        System.out.println("2 - RESTAR");
//        System.out.println("3 - MULTIPLICAR");
//        System.out.println("4 - DIVIDIR");
//        System.out.println("5 - VOLVER A INGRESAR LOS NUMEROS");
//        int opcion = leer.nextInt();
            int opcion;
        do {
            System.out.println("Ingrese la operacion deseada");
            System.out.println("1 - SUMAR");
            System.out.println("2 - RESTAR");
            System.out.println("3 - MULTIPLICAR");
            System.out.println("4 - DIVIDIR");
            System.out.println("5 - VOLVER A INGRESAR LOS NUMEROS");
            System.out.println("6 - FINALIZAR OPERACION");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1:
                    System.out.println("===================");
                    System.out.println(op.sumar());
                    break;
                case 2:
                    System.out.println("===================");
                    System.out.println(op.restar());
                    break;
                case 3:
                    System.out.println("===================");
                    System.out.println(op.multiplicar());
                    break;
                case 4:
                    System.out.println("===================");
                    System.out.println(op.dividir());
                    break;
                case 5:
                    System.out.println("===================");
                    op.crearOperacion();
                    break;
                default:
                    System.out.println("FIN DE OPERACION");
                    break;
            }
        } while (opcion < 6);
    }
}
