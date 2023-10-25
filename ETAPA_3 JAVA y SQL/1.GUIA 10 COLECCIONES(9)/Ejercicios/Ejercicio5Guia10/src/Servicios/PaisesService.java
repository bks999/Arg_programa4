/*
Se requiere un programa que lea y guarde países, y para evitar que se ingresen repetidos
usaremos un conjunto. El programa pedirá un país en un bucle, se guardará el país en el
conjunto y después se le preguntará al usuario si quiere guardar otro país o si quiere salir,
si decide salir, se mostrará todos los países guardados en el conjunto. (Recordemos hacer
los servicios en la clase correspondiente)
Después deberemos mostrar el conjunto ordenado alfabéticamente: para esto recordar
cómo se ordena un conjunto.
Por último, al usuario se le pedirá un país y se recorrerá el conjunto con un Iterator, se
buscará el país en el conjunto y si está en el conjunto se eliminará el país que ingresó el
usuario y se mostrará el conjunto. Si el país no se encuentra en el conjunto se le informará
al usuario.
 */
package Servicios;

import Entidades.Pais;
import Utilidades.Comparadores;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

/**
 *
 * @author Sol
 */
public class PaisesService {

    HashSet<Pais> conjuntoPais = new HashSet<>();
    public static Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public void crearPais() {
        System.out.println("Ingrese un pais");
        String nombre = sc.next();
        Pais pais = new Pais(nombre);
        conjuntoPais.add(pais);
    }

    public void guardarPaises() {
        String respuesta = " ";
        do {
            crearPais();
            do {
                System.out.println("Deseas guardar otro pais? (si/no)");
                respuesta = sc.next();
                if (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si")) {
                    System.out.println("Error de respuesta...");
                }
            } while (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si"));
        } while (respuesta.equalsIgnoreCase("si"));
        if (respuesta.equalsIgnoreCase("no")) {
            System.out.println("------------------------------");
            System.out.println("Lista de paises:");
            for (Pais pais : conjuntoPais) {
                System.out.println(pais.getNombre());
            }
        }
    }

    public void ordenarAlfab() {             
        TreeSet<Pais> paises = new TreeSet<>(Comparadores.ordenarPaisAsc);
        paises.addAll(conjuntoPais);
        for (Pais pais : paises) {
            System.out.println(pais.getNombre());
        }
    }

    public void removePais() {

        Iterator<Pais> it = conjuntoPais.iterator();

        System.out.println("Ingrese el pais que quiera buscar y remover de la lista");
       Pais paisAremover = new Pais(sc.next());
        int cont = 0;
        while (it.hasNext()) {
            if (it.next().getNombre().equalsIgnoreCase(paisAremover.getNombre())) {
                System.out.println("Se ha encontrado el pais ingresado...");
                it.remove();
                System.out.println("Se ha removido.");
                cont++;
            }
        }
        if (cont == 0) {
            System.out.println("El pais ingresado no se encuentra en la lista.");
        }

        System.out.println("------------------------------");
        System.out.println("Lista de paises:");
        for (Pais pais : conjuntoPais) {
            System.out.println(pais.getNombre());
        }
    }
}
