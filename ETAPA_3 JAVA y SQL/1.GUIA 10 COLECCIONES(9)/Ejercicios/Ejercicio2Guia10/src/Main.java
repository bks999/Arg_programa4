
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

/*
Continuando el ejercicio anterior, después de mostrar los perros, al usuario se le pedirá
un perro y se recorrerá la lista con un Iterator, se buscará el perro en la lista. Si el perro
está en la lista, se eliminará el perro que ingresó el usuario y se mostrará la lista
ordenada. Si el perro no se encuentra en la lista, se le informará al usuario y se mostrará
la lista ordenada.
 */
/**
 *
 * @author Sol
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<String> razas = new ArrayList();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        String respuesta;
        do {
            System.out.println("Ingrese una raza de perro en la lista");
            razas.add(sc.next());
            do {
                System.out.println("Desea agregar mas? (s/n)");
                respuesta = sc.next();
                if (!respuesta.equals("s") && !respuesta.equals("n")) {
                    System.out.println("Respuesta incorrecta");
                }
            } while (!respuesta.equals("s") && !respuesta.equals("n"));

        } while (respuesta.equalsIgnoreCase("s"));
        System.out.println("-----------------------------------------------");
        System.out.println("Razas ingresadas en la lista:");
        for (String raza : razas) {
            System.out.println(raza);
        }
        System.out.println("-----------------------------------------------");
        Iterator<String> it = razas.iterator();  //Crear iterator para recorrer la lista de razas
        System.out.println("Escribe el perro que quieres buscar y eliminar de la lista");
        String perro = sc.next();

        if (razas.contains(perro)) {
            while (it.hasNext()) {
                if (it.next().equalsIgnoreCase(perro)) {
                    it.remove();
                }
            }
        } else {
            System.out.println("No se encontro al perro buscado");
        }
        System.out.println("-----------------------------------------------");
        System.out.println("Razas ingresadas en la lista:");
        for (String perros : razas) {
            System.out.println(perros);
        }
    }

}
