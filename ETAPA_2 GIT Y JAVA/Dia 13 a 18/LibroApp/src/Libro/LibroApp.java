/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Libro;

/**
 *
 * @author Sol
 */
public class LibroApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Libro libro1 = new Libro ();
        
        libro1.cargarLibro();
        System.out.println(libro1.toString());
    }
    
}
