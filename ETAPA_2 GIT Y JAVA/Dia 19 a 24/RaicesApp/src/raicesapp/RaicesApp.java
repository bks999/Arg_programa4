/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package raicesapp;

import Entidad.Raices;
import Servicios.RaicesServicios;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class RaicesApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner insert = new Scanner(System.in);
        System.out.println("Ingresar un valor a:");
        int a = insert.nextInt();
        System.out.println("Ingresar un valor b:");
        int b = insert.nextInt();
        System.out.println("Ingresar un valor c:");
        int c = insert.nextInt();

        Raices r = new Raices(a, b, c);
        RaicesServicios rs = new RaicesServicios();

        System.out.println("La discriminante de la ecuacion de segundo grado es: " + rs.getDiscriminante(a, b, c));
        System.out.println("");

        rs.tieneRaices(rs.getDiscriminante(a, b, c));
        rs.tieneRaiz(rs.getDiscriminante(a, b, c));

        rs.obtenerRaices(rs.tieneRaices(rs.getDiscriminante(a, b, c)), a, b, c);
        rs.obtenerRaiz(rs.tieneRaiz(rs.getDiscriminante(a, b, c)), a, b, c);

        System.out.println("----------------------------------------------------------------------");
        System.out.println("");
        rs.calcular(rs.tieneRaices(rs.getDiscriminante(a, b, c)), rs.tieneRaiz(rs.getDiscriminante(a, b, c)), a, b, c);
    }

}
