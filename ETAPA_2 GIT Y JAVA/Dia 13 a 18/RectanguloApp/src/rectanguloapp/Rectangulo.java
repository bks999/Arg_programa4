/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rectanguloapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Rectangulo {

    public static Scanner leer = new Scanner(System.in);
    private double base;
    private double altura;

    public Rectangulo() {
    }

    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    void crearRectangulo() {
        System.out.println("Ingrese la base del rectangulo");
        this.base = leer.nextDouble();
        System.out.println("Ingrese la altura del rectangulo");
        this.altura = leer.nextDouble();
    }

    public double superficieRectangulo() {
        return (base * altura);
    }

    public double perimetroRectangulo() {
        return ((base + altura) * 2);
    }

    public void dibujarRectangulo() {
        for (int i = 0; i < altura; i++) {
            for (int j = 0; j < base; j++) {
                if (i == 0 || j == 0 || i == (altura - 1) || j == (base - 1)) {
                    System.out.print("* ");
                } else {
                    System.out.print("  ");
                }
            }
            System.out.println("");
        }
    }

}
