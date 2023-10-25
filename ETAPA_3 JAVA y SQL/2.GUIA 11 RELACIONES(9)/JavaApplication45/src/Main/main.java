/*
 Realizar un programa para que una Persona pueda adoptar un Perro. Vamos a contar de dos
clases. Perro, que tendrá como atributos: nombre, raza, edad y tamaño; y la clase Persona con
atributos: nombre, apellido, edad, documento y Perro.
Ahora deberemos en el main crear dos Personas y dos Perros. Después, vamos a tener que
pensar la lógica necesaria para asignarle a cada Persona un Perro y por ultimo, mostrar desde
la clase Persona, la información del Perro y de la Persona.
 */
package Main;

import Entities.Perro;
import Entities.Persona;
import java.util.ArrayList;

/**
 *
 * @author Sol
 */
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        Perro perro1 = new Perro("Wally", "Caniche", 2, "mediano");
        Perro perro2 = new Perro("Princesa", "Dalmata", 3, "grande");

        Persona p1 = new Persona("Julieta", "Carrasco", 32, 3564521, perro1);
        Persona p2 = new Persona("Marcos", "Fernandez", 36, 3365486, perro2);

        ArrayList<Persona> lista = new ArrayList<>();
        lista.add(p1);
        lista.add(p2);

        for (Persona persona : lista) {
            System.out.println(persona.toString());
        }

    }
}


