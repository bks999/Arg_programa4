/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package circunferenciaapp;

/**
 *
 * @author Sol
 */
public class CircunferenciaApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Circunferencia c1 = new Circunferencia();
        
        c1.crearCircunferencia();
        
        System.out.println("AREA: " + c1.area());
        System.out.println("PERIMETRO: " + c1.perimetro());
    }
    
}
