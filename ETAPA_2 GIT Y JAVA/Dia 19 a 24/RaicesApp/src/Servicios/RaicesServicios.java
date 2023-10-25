package Servicios;

import Entidad.Raices;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Sol
 */
public class RaicesServicios {

    Raices r = new Raices();

    public double getDiscriminante(int a, int b, int c) {
        double num;
        num = (Math.pow(b, 2)) - (4 * a * c);

        return num;
    }

    public boolean tieneRaices(double getDiscriminante) {
        boolean resultado = false;
        if (getDiscriminante >= 0) {
            resultado = true;
        }
        return resultado;
    }

    public boolean tieneRaiz(double getDiscriminante) {
        boolean resultado;
        if (getDiscriminante == 0) {
            resultado = true;
        }else {
            resultado = false;
        }
        return resultado;
    }

    public void obtenerRaices(boolean tieneRaices, int a, int b, int c) {
        if (tieneRaices == true) {
            System.out.println("La ecuacion tiene dos soluciones posibles:");
            System.out.println("      Solucion con discriminante positivo: " + (-b + (Math.sqrt(((Math.pow(b, 2)) - (4 * a * c))))) / (2 * a));

            System.out.println("      Solucion discriminante negativo:     " + (-b - (Math.sqrt(((Math.pow(b, 2)) - (4 * a * c))))) / (2 * a));

        } else {
            System.out.println("La ecuacion no tiene dos soluciones.");
        }
    }

    public void obtenerRaiz(boolean tieneRaiz, int a, int b, int c) {
        if (tieneRaiz == true) {
            System.out.println("La ecuacion cuenta con una sola solucion: " + (-b / (2 * a)));
        }else{
            System.out.println("La ecuacion tiene mas de una solucion.");
        }
    }

    public void calcular(boolean tieneRaices, boolean tieneRaiz, int a, int b, int c) {
        if (tieneRaices == true) {
            obtenerRaices(tieneRaices, a, b, c);
        }
        if (tieneRaiz == true) {
            obtenerRaiz(tieneRaiz, a, b, c);
        }
    }
}
