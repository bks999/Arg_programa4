
import java.util.ArrayList;
import java.util.Scanner;

/*
Diseñar un programa que lea y guarde razas de perros en un ArrayList de tipo String. El
programa pedirá una raza de perro en un bucle, el mismo se guardará en la lista y
después se le preguntará al usuario si quiere guardar otro perro o si quiere salir. Si decide
salir, se mostrará todos los perros guardados en el ArrayList.
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
    }

}
