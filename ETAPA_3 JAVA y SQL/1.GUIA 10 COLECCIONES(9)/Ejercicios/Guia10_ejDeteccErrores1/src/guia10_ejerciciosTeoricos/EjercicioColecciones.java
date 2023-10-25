/*
 Toma la Lista, el Conjunto y el Mapa del ejemplo y agrega 5 objetos a cada uno.
 */
package guia10_ejerciciosTeoricos;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.TreeMap;

/**
 *
 * @author Sol
 */
public class EjercicioColecciones {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        //LISTAS ARRAYLIST
        ArrayList<String> nombres = new ArrayList();
//        for (int i = 0; i < 5; i++) {
//            System.out.println("Ingrese un nombre a la lista. Nombre n°" + (i+1));
//            nombres.add(sc.next());
//        }
        nombres.add("Sol");
        nombres.add("Ezequiel");
        nombres.add("Fabian");
        nombres.add("Daiana");
        nombres.add("Edison");
        
        System.out.println("Se ha creado una lista de " + nombres.size() + " nombres.");       
        System.out.println("");
        System.out.println("Lista de nombres:");
        for (String nombre : nombres) {
            System.out.println(nombre);
        }
        System.out.println(" ");
        nombres.remove("Edison");
        System.out.println("Se remueve un nombre de la lista");
        System.out.println("");
        System.out.println("Lista de nombres:");
        for (String nombre : nombres) {
            System.out.println(nombre);
        }
        System.out.println("");
        System.out.println(" -------------------------------- ");
        System.out.println("");
        //CONJUNTOS
        
        HashSet<Integer> numeros = new HashSet();
        numeros.add(1);
        numeros.add(24);
        numeros.add(53);
        numeros.add(86);
        numeros.add(35);
        System.out.println("Se ha creado un conjunto de " + numeros.size() + " numeros.");
        System.out.println("Conjunto de numeros:");
        for (Integer numero : numeros) {
            System.out.println(numero);
        }
        System.out.println(" ");
        numeros.remove(1);
        System.out.println("Se remueve el primer numero");
        System.out.println("Conjunto de numeros:");
        for (Integer numero : numeros) {
            System.out.println(numero);
        }
        System.out.println("");
        System.out.println(" -------------------------------- ");
        System.out.println("");
        //MAPAS
        TreeMap<Integer,String> dniNombre = new TreeMap();
        for (int i = 0; i < 5; i++) {
            System.out.println("Ingrese el dni");
            int dni = sc.nextInt();
            System.out.println("Ingrese el nombre");
            String nombre = sc.next();
            dniNombre.put(dni, nombre);
        }
        System.out.println(dniNombre.size());
        
    }

}
