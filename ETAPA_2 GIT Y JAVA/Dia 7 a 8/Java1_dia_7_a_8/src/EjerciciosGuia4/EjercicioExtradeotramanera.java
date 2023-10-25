/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EjerciciosGuia4;

/**
 *
 * @author Sol
 */
public class EjercicioExtradeotramanera {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String salida = "";
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                for (int k = 0; k < 10; k++) {
                    salida = (i + " - " + j + " - " + k);
                    salida = salida.replace("3", "E");
                    System.out.println(salida);
                    }
                }
            }
        }
    }

