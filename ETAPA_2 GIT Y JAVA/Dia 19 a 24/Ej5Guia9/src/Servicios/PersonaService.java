/*
 Implemente la clase Persona en el paquete entidades. Una persona tiene un nombre y una fecha de nacimiento 
(Tipo Date), constructor vacío, constructor parametrizado, get y set. Crear una clase PersonaService, en el
paquete servicio, con los siguientes métodos:

Método crearPersona que pida al usuario Nombre y fecha de nacimiento de la persona a crear. Retornar el 
objeto Persona creado.

Método calcularEdad que calcule la edad del usuario utilizando el atributo de fecha de nacimiento y la fecha actual.

Método menorQue recibe como parámetro una Persona y una edad. Retorna true si la persona es menor que 
la edad consultada o false en caso contrario.

Método mostrarPersona que muestra la información de la persona deseada.
 */
package Servicios;

import Entidades.Persona;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class PersonaService {

    Scanner insert = new Scanner(System.in);

    public Persona crearPersona() {
        int [] []vector= new int[5][5]; // Le ponemos la dimension al vector

        System.out.println("Ingrese su nombre");
        String nombre = insert.next();
        System.out.println("Ingrese el dia en que nacio");
        int dia = insert.nextInt();
        System.out.println("Ingrese el mes en que nacio");
        int mes = insert.nextInt();
        System.out.println("Ingrese el anio en que nacio");
        int anio = insert.nextInt();
        Date fecha = new Date(anio - 1900, mes - 1, dia);
        return new Persona(nombre, fecha);
    }

    public long calcularEdad(Persona p) {
        Date fechaActual = new Date();
        System.out.println(p.getFechaDeNac());
        long edad = fechaActual.getTime() - p.getFechaDeNac().getTime();
        edad = edad / (1000L * 60 * 60 * 24 * 365);
        return edad;
    }

    public boolean menorQue(long calcularEdad) {
        long edadPersona = calcularEdad;
        System.out.println(edadPersona);
        System.out.println("Ingrese una edad para determinar si es mayor que usted");
        int edad = insert.nextInt();

        return edadPersona < edad;
    }
}
