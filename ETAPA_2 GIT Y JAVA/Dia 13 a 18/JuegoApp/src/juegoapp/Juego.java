/*
Crea una clase "Juego" que tenga un método "iniciar_juego" que permita a dos jugadores jugar un juego de
adivinanza de números. El primer jugador elige un número y el segundo jugador intenta adivinarlo. El segundo
jugador tiene un número limitado de intentos y recibe una pista de "más alto" o "más bajo" después de cada 
intento. El juego termina cuando el segundo jugador adivina el número o se queda sin intentos. Registra el
número de intentos necesarios para adivinar el número y el número de veces que cada jugador ha ganado.

 */
package juegoapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Juego {

    public void iniciar_juego() {
        String continueJ = "";
        Scanner leer = new Scanner(System.in);
        Scanner ingresar = new Scanner(System.in);
        System.out.println("INICIANDO JUEGO DE ADIVINANZA");
        System.out.println("=====================================================================");
        System.out.println("Ingresar nombre de los jugadores");
        System.out.println("JUGADOR1: ");
        String jugador1 = leer.nextLine();
        System.out.println("JUGADOR2: ");
        String jugador2 = leer.nextLine();
        System.out.println("=====================================================================");
        boolean confirmar;
        do {
            System.out.println("JUGADOR 1: Elija un numero.");
            int numero = ingresar.nextInt();
            System.out.println("=====================================================================");

            System.out.println("JUGADOR 2: Adivina el numero elegido por el JUGADOR 1. Tienes varios intentos.");
            int numeroAdv;
            int cont = 0;
            int puntosGanados = 0;

            numeroAdv = ingresar.nextInt();

            if (numeroAdv > numero) {
                System.out.println("No lo adivinaste! hint: mas bajo...Vuelva a intentarlo!");
                cont++;
            } else if (numeroAdv < numero) {
                System.out.println("No lo adivinaste! hint: mas alto... Vuelve a intentarlo!");
                cont++;
            } else if (numeroAdv == numero) {
                cont++;
                puntosGanados++;
                System.out.println("Ganaste! Has adivinado en " + cont + " intentos!");
                System.out.println("=====================================================================");

            }
            System.out.println("Desean continuar el juego? (S/N)");
            continueJ = leer.nextLine();
        } while (!continueJ.equalsIgnoreCase("n"));


    }
}
