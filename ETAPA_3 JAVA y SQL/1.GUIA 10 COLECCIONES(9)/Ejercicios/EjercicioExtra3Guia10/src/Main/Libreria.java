/*
También se creará en el main un HashSet de tipo Libro que guardará todos los libros
creados.
En el main tendremos un bucle que crea un objeto Libro pidiéndole al usuario todos
sus datos y los seteandolos en el Libro. Despues, ese Libro se guarda en el conjunto y
se le pregunta al usuario si quiere crear otro Libro o no.
 */
package Main;

import Entidades.Libro;
import Servicios.LibreriaService;
import java.util.HashSet;
import java.util.Locale;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Libreria {

    /**
     * @param args the command line arguments
     */
//    private String libro;
//    private String autor;
//    private Integer numEjemplares;
//    private Integer numEjemplaresPrestados;
    public static void main(String[] args) {
        HashSet<Libro> biblioteca = new HashSet<>();
        LibreriaService sv = new LibreriaService();
        Scanner sc = new Scanner(System.in, "ISO-8859-1").useDelimiter("\n").useLocale(Locale.US);
        String respuesta = " ";
        do {
            System.out.println("Ingrese el nombre del libro");
            String titulo = sc.next();
            System.out.println("Ingrese el nombre del autor");
            String nombre = sc.next();
            System.out.println("Ingrese el numero de ejemplares en la biblioteca");
            Integer ejemp = sc.nextInt();
            System.out.println("Ingrese el numero de ejemplares prestados");
            Integer ejempPrestados = sc.nextInt();
            Libro L = new Libro(titulo, nombre, ejemp, ejempPrestados);
            biblioteca.add(L);
            do {
                System.out.println("[ Desea continuar ingresando otro libro? ]");
                respuesta = sc.next();
                if (!respuesta.equalsIgnoreCase("si") && !respuesta.equalsIgnoreCase("no")) {
                    System.out.println("///////////// Respuesta invalida /////////////");
                }
            } while (!respuesta.equalsIgnoreCase("si") && !respuesta.equalsIgnoreCase("no"));
        } while (respuesta.equalsIgnoreCase("si"));
        int opcion = 0;
        do {
            System.out.println("Elige el numero de la accion que desees realizar");
            System.out.println("1 - Prestamo de un libro");
            System.out.println("2 - Devolucion de un libro");
            System.out.println("3 - Ver la lista de todos los libros en la libreria");
            System.out.println("4 - Presiona cualquier tecla diferentes a 1,2,3 para salir del menu");
            opcion = sc.nextInt();
            switch (opcion) {
                case 1:
                    sv.prestamo(biblioteca);
                    break;
                case 2:
                    sv.devolucion(biblioteca);
                    break;
                case 3:
                    sv.toString(biblioteca);
                    break;
            }
        } while (opcion > 0 && opcion < 4);
    }

}
