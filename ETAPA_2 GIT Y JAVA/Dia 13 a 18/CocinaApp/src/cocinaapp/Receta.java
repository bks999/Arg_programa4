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
public class Receta {

    public String nombre;
    public String[] ingredientes;

    public Receta(String nombre, String[] ingredientes) {
        this.nombre = nombre;
        this.ingredientes = ingredientes;
    }

    public Receta() {
    }

    public void crearReceta() {
        Scanner insert = new Scanner(System.in);

        System.out.println("Ingrese el nombre de la receta");
        this.nombre = insert.nextLine();

        System.out.println("Ingrese los ingredientes necesarios. Ingrese 0 cuando finalice.");

        int ingredientesMax = 10;

        for (int i = 0; i < ingredientesMax; i++) {
            this.ingredientes[i] = insert.next();
            if (this.ingredientes[i].equals(0)) {

                for (int j = i; j < (ingredientesMax - i); j++) {
                    this.ingredientes[j] = "";
                }
            }
        }

    }

}
