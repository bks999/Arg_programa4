/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pooej01;

import Entidad.Persona;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class POOEj01 {
    public static Scanner leer = new Scanner (System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Persona persona = new Persona();
        
        persona.cargarDatos();
    }
}
