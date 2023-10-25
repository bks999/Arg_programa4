/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package RuletaDeAguaApp;

import Entities.Juego1;
import Entities.Jugador;
import Entities.Revolver;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class ruleta {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Jugador> listaJugadores = new ArrayList<>();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        Revolver r = new Revolver();
        r.llenarRevolver();
        int cont = 0;
        String nombre = " ";
        String respuesta = " ";
        do {
            System.out.println("Ingrese el nombre del jugador");
            nombre = sc.next();
            cont++;
            Jugador jugador = new Jugador(cont, nombre);
            listaJugadores.add(jugador);
            System.out.println("Deseas agregar un jugador mas? (si/no)");
            respuesta = sc.next();
        } while (cont == 6 || respuesta.equalsIgnoreCase("si"));

        while (cont < 6) {
            cont++;
            Jugador jugador = new Jugador(cont, " ");
            listaJugadores.add(jugador);
        }
        for (Jugador aux : listaJugadores) {
            System.out.println(aux);
        }
        Juego1 j = new Juego1();
        j.llenarJuego(listaJugadores, r);
        j.ronda(listaJugadores, r);
    }

}
