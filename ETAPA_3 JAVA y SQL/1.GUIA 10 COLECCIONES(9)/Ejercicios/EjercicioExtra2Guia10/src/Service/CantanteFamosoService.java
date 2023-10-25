/*
Crear una clase llamada CantanteFamoso. Esta clase guardará cantantes famosos y
tendrá como atributos el nombre y discoConMasVentas.
Se debe, además, en el main, crear una lista de tipo CantanteFamoso y agregar 5
objetos de tipo CantanteFamoso a la lista. Luego, se debe mostrar los nombres de
cada cantante y su disco con más ventas por pantalla.
Una vez agregado los 5, en otro bucle, crear un menú que le de la opción al usuario de
agregar un cantante más, mostrar todos los cantantes, eliminar un cantante que el
usuario elija o de salir del programa. Al final se deberá mostrar la lista con todos los
cambios.
 */
package Service;

import Entities.CantanteFamoso;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CantanteFamosoService {

    Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public void crearCantante(ArrayList<CantanteFamoso> lista) {
        System.out.println("Ingresa el nombre del cantante famoso");
        String nombre = sc.next();
        System.out.println("Ingrese su disco mas famoso");
        String disco = sc.next();
        CantanteFamoso cantante = new CantanteFamoso(nombre, disco);
        lista.add(cantante);
    }

    public void mostrarCantante(ArrayList<CantanteFamoso> lista) {
        for (CantanteFamoso cantanteFamoso : lista) {
            System.out.println(cantanteFamoso.toString());
        }
    }

    public void removeCantante(ArrayList<CantanteFamoso> lista) {
        System.out.println("Ingrese el nombre del cantante a remover de la lista");
        String cantanteAeliminar = sc.next();
        Iterator<CantanteFamoso> it = lista.iterator();
        int cont = 0;
        while (it.hasNext()) {
            if (it.next().getNombre().equalsIgnoreCase(cantanteAeliminar)) {
                it.remove();
                cont++;
            }
        }
        if (cont==0) {
            System.out.println("El cantante ingresado no figura en la lista");
    }
}

public void menu(ArrayList<CantanteFamoso> lista) {
        int opcion;
        do {
            System.out.println("===============MENU===============");
            System.out.println("Elige una opcion:");
            System.out.println("1 - Agregar un cantante nuevo a la lista");
            System.out.println("2 - Eliminar un cantante de la lista");
            System.out.println("3 - Mostrar la lista de cantantes");
            System.out.println("4 - Salir");
            System.out.print("> ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    crearCantante(lista);
                    break;
                case 2:
                    removeCantante(lista);
                    break;
                case 3:
                    mostrarCantante(lista);
                    break;
                case 4:
                    System.out.println("Finalizando programa...");
                    break;
                default:
                    System.out.println("Opcion invalida.");
                    break;
            }
        } while (opcion!=4);
    }
}
