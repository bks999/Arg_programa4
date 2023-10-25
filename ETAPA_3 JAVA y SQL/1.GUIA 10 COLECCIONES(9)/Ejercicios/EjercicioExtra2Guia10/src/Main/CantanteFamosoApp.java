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
package Main;

import Entities.CantanteFamoso;
import Service.CantanteFamosoService;
import java.util.ArrayList;

/**
 *
 * @author Sol
 */
public class CantanteFamosoApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        CantanteFamosoService x = new CantanteFamosoService();
       ArrayList <CantanteFamoso> listaCantantes = new ArrayList<> ();
       listaCantantes.add(new CantanteFamoso("Celine Dion", "Heart will go on"));
       listaCantantes.add(new CantanteFamoso("Bon jovi", "It's my life"));
       listaCantantes.add(new CantanteFamoso("Black pink", "Pink venom"));
       listaCantantes.add(new CantanteFamoso("BTS", "Dynamite"));
       listaCantantes.add(new CantanteFamoso("Alicia Keys", "If I Ain't Got You"));
       
       x.menu(listaCantantes);
        System.out.println("");
        System.out.println("La lista final de cantantes famosos:");
        x.mostrarCantante(listaCantantes);
        }
    }
    

