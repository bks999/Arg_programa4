/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servicios;

import Entidades.Libro;
import java.util.HashSet;
import java.util.Locale;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class LibreriaService {

    Scanner sc = new Scanner(System.in, "ISO-8859-1").useDelimiter("\n").useLocale(Locale.US);

    public boolean prestamo(HashSet<Libro> libros) {
        System.out.println("Ingrese el titulo del libro que quiere prestar");
        String prestamo = sc.next();
        boolean operacion = false;
        for (Libro libro : libros) {
            if (libro.getLibro().equalsIgnoreCase(prestamo)) {
                Integer aux = libro.getNumEjemplaresPrestados();
                Integer max = libro.getNumEjemplares();
                if (aux<max && aux!=max ) {
                    operacion = true;
                    aux++;
                    libro.setNumEjemplaresPrestados(aux);
                } else if (aux == max) {
                    System.out.println("No hay ejemplares para prestar");
                }
            }
        }
        return operacion;
    }

    public boolean devolucion(HashSet<Libro> libros) {
        System.out.println("Ingrese el titulo del libro que quiere devolver");
        String devolucion = sc.next();
        boolean operacion = false;
        for (Libro libro : libros) {
            if (libro.getLibro().equalsIgnoreCase(devolucion)) {
                Integer aux1 = libro.getNumEjemplaresPrestados();
                 Integer max1 = libro.getNumEjemplares();
                if (aux1 > 0 && max1>=aux1) {
                    aux1--;
                    libro.setNumEjemplaresPrestados(aux1);
                    operacion = true;
                } else {
                    System.out.println("No hay libros para devolver");
                }
            }
        }
        return operacion;
    }

    public void toString(HashSet<Libro> libros) {
        for (Libro libro : libros) {
            System.out.println(libro.toString());
        }
    }

}
