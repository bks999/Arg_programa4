/*
Nos piden hacer un programa sobre un Cine, que tiene una sala con un conjunto de asientos
(8 filas por 6 columnas). De Cine nos interesa conocer la película que se está reproduciendo, la
sala con los espectadores y el precio de la entrada. Luego, de las películas nos interesa saber
el título, duración, edad mínima y director. Por último, del espectador, nos interesa saber su
nombre, edad y el dinero que tiene disponible.
Para representar la sala con los espectadores vamos a utilizar una matriz. Los asientos son
etiquetados por una letra y un número la fila A1 empieza al final del mapa como se muestra en
la tabla. También deberemos saber si el asiento está ocupado por un espectador o no, si esta
ocupado se muestra una X, sino un espacio vacío.

Se debe realizar una pequeña simulación, en la que se generen muchos espectadores y se los
ubique en los asientos aleatoriamente (no se puede ubicar un espectador donde ya este
ocupado el asiento).
Los espectadores serán ubicados de uno en uno y para ubicarlos tener en cuenta que sólo se
podrá sentar a un espectador si tiene el dinero suficiente para pagar la entrada, si hay espacio
libre en la sala y si tiene la edad requerida para ver la película. En caso de que el asiento este
ocupado se le debe buscar uno libre.
Al final del programa deberemos mostrar la tabla, podemos mostrarla con la letra y numero de
cada asiento o solo las X y espacios vacíos.
 */
package guia11ejextra2;

import Entities.Cine;
import Entities.Espectador;
import Entities.Pelicula;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Guia11EjExtra2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        Pelicula peli = new Pelicula("Super Mario Bros", 1.32, 13, "Aaron Horvath");
        double precioEntrada = 200;
        Cine cine = new Cine(peli, precioEntrada);
        System.out.println("En cartelera esta disponible la siguiente pelicula:");
        System.out.println(cine);

        Espectador[][] asientos = new Espectador[8][6];
        Espectador vacio = new Espectador();
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 6; j++) {
                asientos[i][j] = vacio;
            }
        }

        ArrayList<Espectador> espectadores = new ArrayList<>();
        for (int i = 0; i < 48; i++) {
            String nombreEspectador = "Espectador " + i;
            int edadEspectador = (int) (Math.random() * 90);
            double billetera = Math.random() * 1000;
            Espectador espectador = new Espectador(nombreEspectador, edadEspectador, billetera);
            espectadores.add(espectador);
        }
        
        int fila;
        int columna;
        boolean aux = false;
        int aptos = 0;
        int noAptos = 0;
        int sinDinero = 0;
        int noEdad = 0;
        int ambos = 0;
        for (Espectador persona : espectadores) {
            if (persona.getDineroDisp() >= precioEntrada && persona.getEdad() >= peli.getEdadMinima()) {
                aptos++;
                do {
                    fila = (int) (Math.random() * 8);
                    columna = (int) (Math.random() * 6);
                    
                    if (asientos[fila][columna].equals(vacio)) {
                        aux = true;
                        asientos[fila][columna] = persona;
                    }
                } while (aux == false);
            } else {
                noAptos++;
                if (persona.getDineroDisp()<precioEntrada) {
                    sinDinero++;
                }
                if (persona.getEdad()<peli.getEdadMinima()) {
                    noEdad++;
                }
                if (persona.getDineroDisp() < precioEntrada && persona.getEdad() < peli.getEdadMinima()) {
                    ambos++;
                }
            }
        }
        System.out.println("");
        System.out.println("Aptos para entrar=" + aptos + " y no aptos=" + noAptos);
        System.out.println("Personas que no les alcanzo el dinero=" + sinDinero);
        System.out.println("Personas que no les alcanzo la edad=" + noEdad);
        System.out.println("Personas que no les alcanzo ni dinero ni edad=" + ambos);
        System.out.println("");
        System.out.println("----------------------------------------");
        System.out.println("");
        for (int i = 0; i < 8; i++) {
            switch (i) {
                case 0:
                    System.out.print("1 ");
                    break;
                case 1:
                    System.out.print("2 ");
                    break;
                case 2:
                    System.out.print("3 ");
                    break;
                case 3:
                    System.out.print("4 ");
                    break;
                case 4:
                    System.out.print("5 ");
                    break;
                case 5:
                    System.out.print("6 ");
                    break;
                case 6:
                    System.out.print("7 ");
                    break;
                case 7:
                    System.out.print("8 ");
                    break;
            }
            for (int j = 0; j < 6; j++) {
                switch(j) {
                    case 0:
                        System.out.print("A ");
                        break;
                    case 1:
                        System.out.print("B ");
                        break;
                    case 2:
                        System.out.print("C ");
                        break;
                    case 3:
                        System.out.print("D ");
                        break;
                    case 4:
                        System.out.print("E ");
                        break;
                    case 5:
                        System.out.print("F ");
                        break;
                }
                
                if (asientos[i][j] == vacio) {
                    System.out.print("  | ");
                } else {
                    System.out.print("X | ");
                }
            }
            System.out.println("");
        }
    }

}
