/*
Ahora se debe realizar unas mejoras al ejercicio de Perro y Persona. Nuestro programa va a
tener que contar con muchas personas y muchos perros. El programa deberá preguntarle a
cada persona, que perro según su nombre, quiere adoptar. Dos personas no pueden adoptar
al mismo perro, si la persona eligió un perro que ya estaba adoptado, se le debe informar a la
persona.
Una vez que la Persona elige el Perro se le asigna, al final deberemos mostrar todas las
personas con sus respectivos perros.
 */
package guia11ejextra1;

import Entities.Perro;
import Entities.Persona;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Guia11EjExtra1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Perro> perros = new ArrayList<>();
        ArrayList<Persona> personas = new ArrayList<>();
        ArrayList<Perro> adoptados = new ArrayList<>();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        String respuesta = " ";
        String respuesta1 = " ";
        do {
            System.out.println("Ingresar datos de perro");
            System.out.print("Nombre: ");
            String nombre = sc.next();
//            System.out.print("Raza: ");
//            String raza = sc.next();
//            System.out.print("Edad: ");
//            int edad = sc.nextInt();
//            System.out.print("Tamanio: ");
//            String tamanio = sc.next();
//            Perro perro = new Perro(nombre, raza, edad, tamanio);
            Perro perro = new Perro(nombre);
            perros.add(perro);

            do {
                System.out.println("Desea ingresar otro perro? (si/no)");
                respuesta = sc.next();
                if (!(respuesta.equalsIgnoreCase("si")) && !(respuesta.equalsIgnoreCase("no"))) {
                    System.out.println("Respuesta incorrecta");
                }
            } while (!(respuesta.equalsIgnoreCase("si")) && !(respuesta.equalsIgnoreCase("no")));
        } while (respuesta.equalsIgnoreCase("si"));

        for (Perro perro : perros) {
            System.out.println(perro.toString());
        }
        int hay;
        int yaAdoptado;

        do {
            System.out.println("Ingrese los datos de la persona");
            System.out.print("Nombre: ");
            String nombrePersona = sc.next();

            do {
                hay = 0;
                yaAdoptado = 0;
                System.out.print("Ingrese el nombre del perro que quiere adoptar: ");
                String nombrePerro = sc.next();
                Perro doggy = new Perro();

                for (int i = 0; i < perros.size(); i++) {
                    Perro perro = perros.get(i);
                    if (perro.getNombre().equalsIgnoreCase(nombrePerro)) {
                        hay++;
                        doggy = perro;
                        System.out.println("Hay = " + hay);
                        if (adoptados.isEmpty()) {
                            adoptados.add(doggy);
                            System.out.println("se agrega a lista de adoptados");
                            System.out.println("Se adopto sin problemas");
                            Persona personaPerro = new Persona(nombrePersona, doggy);
                            personas.add(personaPerro);
                            break;
                        } else {
                            for (int j = 0; j < adoptados.size(); j++) {
                                Perro adoptado = adoptados.get(j);
                                if (!adoptado.getNombre().equalsIgnoreCase(nombrePerro)) {
                                    adoptados.add(doggy);
                                    System.out.println("se agrega a lista de adoptados");
                                    System.out.println("Se adopto sin problemas");
                                    Persona personaPerro = new Persona(nombrePersona, doggy);
                                    personas.add(personaPerro);
                                    break;
                                } else {
                                    yaAdoptado++;
                                    System.out.println("ya fue adoptado");
                                    break;
                                }
                            }
                        }
                    }
                }
                System.out.println("if/else");
                if (hay == 0) {
                    System.out.println("El perro que se quiere adoptar no se encuentra en la lista");
                }
            } while ((hay == 0) || ((hay > 0) && (yaAdoptado > 0)));

            do {
                System.out.println("Desea ingresar otra persona? (si/no)");
                respuesta1 = sc.next();
                if (!(respuesta1.equalsIgnoreCase("si")) && !(respuesta1.equalsIgnoreCase("no"))) {
                    System.out.println("Respuesta incorrecta");
                }
            } while (!(respuesta1.equalsIgnoreCase("si")) && !(respuesta1.equalsIgnoreCase("no")));

        } while (respuesta1.equalsIgnoreCase("si"));

        for (Persona persona : personas) {
            System.out.println(persona.toString());
        }
    }
}
