/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AhorcadoMain;

import Entidades.AhorcadoEntidades;
import Service.AhorcadoService;



/**
 *
 * @author Sol
 */
public class AhorcadoApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        AhorcadoService ah = new AhorcadoService();
        AhorcadoEntidades ahe = new AhorcadoEntidades();
        ah.juego(ahe);
    }
    
}
