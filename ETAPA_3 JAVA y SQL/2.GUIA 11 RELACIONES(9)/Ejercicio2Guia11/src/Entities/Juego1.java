/*
Clase Juego: esta clase posee los siguientes atributos: Jugadores (conjunto de Jugadores) y
Revolver
Métodos:
• llenarJuego(ArrayList<Jugador>jugadores, Revolver r): este método recibe los jugadores
y el revolver para guardarlos en los atributos del juego.
• ronda(): cada ronda consiste en un jugador que se apunta con el revolver de agua y
aprieta el gatillo. Sí el revolver tira el agua el jugador se moja y se termina el juego, sino se
moja, se pasa al siguiente jugador hasta que uno se moje. Si o si alguien se tiene que
mojar. Al final del juego, se debe mostrar que jugador se mojó.
Pensar la lógica necesaria para realizar esto, usando los atributos de la clase Juego.
 */
package Entities;

import java.util.ArrayList;

/**
 *
 * @author Sol
 */
public class Juego1 {

    ArrayList<Jugador> jugadores;
    Revolver revolver;

    public Juego1() {
        jugadores = new ArrayList<>(6);
        revolver = new Revolver();
    }

    public void llenarJuego(ArrayList<Jugador> jugadores, Revolver r) {
        this.jugadores = jugadores;
        revolver = r;
    }

    public void ronda(ArrayList<Jugador> jugadores, Revolver r) {
        int indice = (int) (Math.random() * jugadores.size());
        Jugador jugadorActual;
        do {
            if (indice >= 6) {
                indice = indice % 6;
            }
            jugadorActual = jugadores.get(indice);
            if (indice < 6) {
                indice++;
            }
            if (!jugadorActual.getNombre().equalsIgnoreCase(" ")) {
                if (jugadorActual.disparo(r)) {
                    System.out.println("SPLASH! " + jugadorActual.getNombre() + " se ha mojado");
                    System.out.println("FIN DEL JUEGO");
                    break;
                } else {
                    System.out.println(jugadorActual.getNombre() + ", no te mojaste! Pasa al siguiente jugador.");
                }
            }
        } while (true || (!jugadorActual.getNombre().equalsIgnoreCase(" ")));
    }

}
