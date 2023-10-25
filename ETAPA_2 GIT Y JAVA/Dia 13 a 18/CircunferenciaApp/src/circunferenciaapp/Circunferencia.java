package circunferenciaapp;

import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sol
 */
public class Circunferencia {
    private double radio;

    public Circunferencia(double radio) {
        this.radio = radio;
    }

    public Circunferencia() {
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }
    public void crearCircunferencia() {
        System.out.println("Ingrese el radio de la circunferencia:");
        Scanner leer = new Scanner (System.in);
        this.radio = leer.nextDouble();
    }
    public double area() {
        double area = Math.PI * (Math.pow(radio, 2));
        return area;
    }
    
    public double perimetro() {
        double perimetro = 2 * Math.PI * radio;
        return perimetro;
    }
}
    