/*
Crea una clase "Cocina" que tenga una lista de objetos "Receta". Luego, crea métodos para agregar nuevas 
recetas a la lista, para buscar una receta por nombre y para obtener la lista de recetas que se pueden preparar
con los ingredientes disponibles en la cocina.
 */
package cocinaapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Cocina {

    Scanner insert = new Scanner(System.in);
    public String[] receta;
    Receta receta1 = new Receta();

    public void crearNuevaReceta() {
        for (int i = 0; i < 10; i++) {
            System.out.println("Ingrese el nombre de la receta " + i);
            receta1.nombre = insert.nextLine();
            receta[i] = receta1.nombre;
        }
    }
}
//Falta llenar los ingredientes y luego hacer un bucle para mostrar lista de recetas.
//pedir al usuario que escriba los ingredientes disponibles en la cocina
//hacer un for buscador de alguna receta que se puede hacer con los ingredientes disponibles.