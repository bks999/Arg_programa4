/*
Realizar una baraja de cartas españolas orientada a objetos. Una carta tiene un número entre 1
y 12 (el 8 y el 9 no los incluimos) y un palo (espadas, bastos, oros y copas). Esta clase debe
contener un método toString() que retorne el número de carta y el palo. La baraja estará
compuesta por un conjunto de cartas, 40 exactamente.
Las operaciones que podrá realizar la baraja son:
• barajar(): cambia de posición todas las cartas aleatoriamente.
• siguienteCarta(): devuelve la siguiente carta que está en la baraja, cuando no haya más o
se haya llegado al final, se indica al usuario que no hay más cartas.
• cartasDisponibles(): indica el número de cartas que aún se puede repartir.
• darCartas(): dado un número de cartas que nos pidan, le devolveremos ese número de
cartas. En caso de que haya menos cartas que las pedidas, no devolveremos nada, pero
debemos indicárselo al usuario.
• cartasMonton(): mostramos aquellas cartas que ya han salido, si no ha salido ninguna
indicárselo al usuario
• mostrarBaraja(): muestra todas las cartas hasta el final. Es decir, si se saca una carta y
luego se llama al método, este no mostrara esa primera carta.
 */
package guia11ejercicio3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Baraja {

    ArrayList<Carta> cartas;
    ArrayList<Carta> descartados;
    Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public Baraja() {
        cartas = new ArrayList<>();
        descartados = new ArrayList<>();
        String[] palos = {"espada", "basto", "oro", "copa"};

        for (String palo : palos) {
            for (int num = 1; num <= 12; num++) {
                if (num != 8 && num != 9) {
                    Carta carta = new Carta(num, palo);
                    cartas.add(carta);
                }
            }
        }
    }

    public void barajar() {
        Collections.shuffle(cartas);
    }

    public Carta siguienteCarta() {

        if (cartas.isEmpty()) {
            System.out.println("No hay mas cartas en la baraja");
        }
        Carta cartita = cartas.remove(0);
        descartados.add(cartita);
        return cartita;
    }

    public void cartasDisponibles() {
        System.out.println("Cartas disponibles en la baraja: " + cartas.size());
    }

    public void darCartas() {
        boolean alcanza = true;
        ArrayList<Carta> mano = new ArrayList<>();
        do {
            System.out.println("Ingrese el numero de cartas que quiera");
            int num = sc.nextInt();
            if (num > cartas.size()) {
                alcanza = false;
                System.out.println("No alcanzan las cartas en la baraja");
            }
            if (num < cartas.size()) {
                System.out.println("Se le entregan " + num + " cartas al jugador");
                for (int i = 0; i < num; i++) {
                    Carta carta = siguienteCarta();
                    mano.add(carta);
                }
            }
        } while (alcanza == false);
        System.out.println("Las cartas de la mano del jugador son:");
        for (Carta carta : mano) {
            System.out.println(carta.toString());
        }
    }

    public void cartasMonton() {
        if (!descartados.isEmpty()) {
            System.out.println("Las cartas que ya salieron son: ");
            for (Carta carta : descartados) {
                System.out.println(carta.toString());
            }
        } else {
            System.out.println("No salio ninguna carta aun");
        }
    }

    public void mostrarBaraja() {
        for (Carta carta : cartas) {
            System.out.println(carta.toString());
        }
    }
}
