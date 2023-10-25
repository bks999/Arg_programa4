/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package guia8extra.servicio;

import guia8extra.Entidades.Fraccion;
import java.util.Scanner;

/**
 *
 * @author windows
 */
public class ServicioDeFraccion {

    private Scanner leer = new Scanner(System.in);
    private Fraccion f = new Fraccion();

    public void menu() {

        System.out.println("ingrese el valor para el primer numerador");
        f.setNum1(leer.nextInt());
        System.out.println("ingrese el valor para el primer denominador");
        f.setDen1(leer.nextInt());
        System.out.println("ingrese el valor para el segundo numerador");
        f.setNum2(leer.nextInt());
        System.out.println("ingrese el valor para el segundo denominador");
        f.setDen2(leer.nextInt());

        System.out.println("");

        int opcion = 0;

        while (opcion != 5) {
            System.out.println("seleccione la operacion que desee");
            System.out.println("opcion 1: sumar");
            System.out.println("opcion 2: restar");
            System.out.println("opcion 3: multiplicar");
            System.out.println("opcion 4: dividir");
            System.out.println("opcion 5: salir del sistema");
            opcion = leer.nextInt();
            switch (opcion) {
                case 1:
                    sumar();
                    break;
                case 2:
                    restar();
                    break;
                case 3:
                    multiplicar();
                    break;
                case 4:
                    dividir();
                    break;
                case 5:
                    System.out.println("hasta luego");
                    break;
                default:
                    System.out.println("opcion incorrecta, vuelva a seleccionar otra vez");

            }

        }

    }

    private void sumar() {
        int nm1 = f.getDen2() * f.getNum1();

        int nm2 = f.getDen1() * f.getNum2();

        int dm = f.getDen1() * f.getDen2();

        System.out.println("la suma da: " + (nm1 + nm2) + "/" + dm);
    }

    private void restar() {
        int nm1 = f.getDen2() * f.getNum1();

        int nm2 = f.getDen1() * f.getNum2();

        int dm = f.getDen1() * f.getDen2();

        System.out.println("la resta da: " + (nm1 - nm2) + "/" + dm);

    }

    private void multiplicar() {

        int num = f.getNum1() * f.getNum2();
        int den = f.getDen1() * f.getDen2();

        System.out.println("la multiplicacion da: " + num + "/" + den);

    }

    private void dividir() {

        int num = f.getNum1() * f.getDen2();
              
        int den = f.getDen1() *  f.getNum2();

        System.out.println("la division da: " + num + "/" + den);

    }

}
