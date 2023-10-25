/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cuentaapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CuentaApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner insert = new Scanner(System.in);
        Cuenta cuenta = new Cuenta();
        System.out.println("Ingrese el nombre del Titular");
        cuenta.setTitular(insert.nextLine());
        
        System.out.println("Saldo actual");
        cuenta.setSaldo(insert.nextDouble());
        
        cuenta.retirar_dinero();
    }

}
