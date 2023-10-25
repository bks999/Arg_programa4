/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import Entidad.Cadena;
import Servicio.CadenaServicio;

/**
 *
 * @author Sol
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        CadenaServicio x = new CadenaServicio();
        Cadena j = new Cadena();
        x.mostrarVocales(x.crearFrase());
        x.invertirFrase(x.getFras());
        x.vecesRepetido(x.getFras());
        x.compararLongitud(x.getFras());
        x.unirFrases(x.getFras());
        x.reemplazar(x.getFras());
        x.contiene(x.getFras());
    }

}
