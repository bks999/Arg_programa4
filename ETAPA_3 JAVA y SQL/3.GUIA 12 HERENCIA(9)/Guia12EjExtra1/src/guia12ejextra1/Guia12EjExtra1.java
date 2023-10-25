/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package guia12ejextra1;

import Entidades.Alquiler;

/**
 *
 * @author Sol
 */
public class Guia12EjExtra1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Alquiler al1 = new Alquiler();
        
        al1.crearCliente();
        System.out.println(al1.toString());
    }
    
}
