/*
Un cine necesita implementar un sistema en el que se puedan cargar peliculas. Para esto,
tendremos una clase Pelicula con el título, director y duración de la película (en horas).
Implemente las clases y métodos necesarios para esta situación, teniendo en cuenta lo
que se pide a continuación:
En el servicio deberemos tener un bucle que crea un objeto Pelicula pidiéndole al usuario
todos sus datos y guardándolos en el objeto Pelicula.
Después, esa Pelicula se guarda una lista de Peliculas y se le pregunta al usuario si quiere
crear otra Pelicula o no.
Después de ese bucle realizaremos las siguientes acciones:

• Mostrar en pantalla todas las películas.
• Mostrar en pantalla todas las películas con una duración mayor a 1 hora.
• Ordenar las películas de acuerdo a su duración (de mayor a menor) y mostrarlo en
pantalla.
• Ordenar las películas de acuerdo a su duración (de menor a mayor) y mostrarlo en
pantalla.
• Ordenar las películas por título, alfabéticamente y mostrarlo en pantalla.
• Ordenar las películas por director, alfabéticamente y mostrarlo en pantalla.
 */
package Servicios;

import Entidades.Pelicula;
import Utilidades.Comparadores;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class PeliculaService {
//Scanner input = new Scanner(System.in, "ISO-8859-1").useDelimiter("\n").useLocale(Locale.US);
    public static Scanner sc = new Scanner(System.in).useDelimiter("\n");
    ArrayList<Pelicula> listaPeliculas = new ArrayList();

    public void crearPelicula() {
        String respuesta = " ";
        do {
            System.out.println("Ingrese el nombre de la pelicula");
            String nombre = sc.next();
            System.out.println("Ingrese el director de la pelicula");
            String director = sc.next();
            System.out.println("Ingrese la duracion de la pelicula (en horas)");
            Double duracion = sc.nextDouble();

            Pelicula pelicula = new Pelicula(nombre, director, duracion);
            listaPeliculas.add(pelicula);
            System.out.println(" ");
            do {
                System.out.println("-------------------------------------------------------");
                System.out.println("Desea crear otra pelicula mas? (si/no)");
                respuesta = sc.next();
                if (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si")) {
                    System.out.println("Error de respuesta...");
                }
            } while (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si"));
        } while (respuesta.equalsIgnoreCase("si"));
    }

    public void mostrarPelicula() {
        int i = 0;
        System.out.println("Las peliculas en el cine son:");
        for (Pelicula peliculas : listaPeliculas) {
            i++;
            System.out.println(i +  " - " + peliculas.getTitulo());
        }
    }
    public void mostrarPeliculaDurMayor() {
        System.out.println("Las peliculas de duracion mayor a una hora son: ");
        for (Pelicula peliLargas : listaPeliculas) {
            if (peliLargas.getDuracion()>1) {
                System.out.println(peliLargas.getTitulo() + " - " + peliLargas.getDuracion());
            }
        }      
    }
    
    public void ordenarPeliculaDesc() {
       Collections.sort(listaPeliculas, Comparadores.compararDuracionDesc);
        System.out.println("Las peliculas por orden descendente de duracion: ");
        for (Pelicula peliculas : listaPeliculas) {
            System.out.println(peliculas.getTitulo()+ " - " + peliculas.getDuracion());
        }
    }
    
    public void ordenarPeliculaAsc() {
        //Collections.reverse(listaPeliculas);
       Collections.sort(listaPeliculas, Comparadores.compararDuracionAsc);
        System.out.println("Las peliculas por orden ascendente de duracion: ");
        for (Pelicula peliculas : listaPeliculas) {
            System.out.println(peliculas.getTitulo()+ " - " + peliculas.getDuracion());
        }
    }
    
    public void ordenarTitulo() {
       Collections.sort(listaPeliculas, Comparadores.compararTitulo);
        System.out.println("Las peliculas por orden de titulo alfabeticamente: ");
        for (Pelicula peliculas : listaPeliculas) {
            System.out.println(peliculas.getTitulo());
        }
    }
    
    public void ordenarDirector() {
       Collections.sort(listaPeliculas, Comparadores.compararDirector);
        System.out.println("Las peliculas por orden de director alfabeticamente ");
        for (Pelicula peliculas : listaPeliculas) {
            System.out.println(peliculas.getTitulo()+ " - " + peliculas.getDirector());
        }
    }
}


