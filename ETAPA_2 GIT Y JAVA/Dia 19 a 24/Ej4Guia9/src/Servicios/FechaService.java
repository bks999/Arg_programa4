/*
Vamos a usar la clase Date que ya existe en Java. Crearemos la clase FechaService, en paquete Servicios, que 
tenga los siguientes métodos:

Método fechaNacimiento que pregunte al usuario día, mes y año de su nacimiento. Luego los pase por parámetro 
a un nuevo objeto Date. El método debe retornar el objeto Date. 
Ejemplo fecha: Date fecha = new Date(anio, mes, dia);

Método fechaActual que cree un objeto fecha con el día actual. Para esto usaremos el constructor vacío de la 
clase Date. Ejemplo: Date fechaActual = new  Date();
El método debe retornar el objeto Date.

Método diferencia que reciba las dos fechas por parámetro y retorna la diferencia de años entre una y otra 
(edad del usuario).
Si necesiten acá tienen más información en clase Date: Documentacion Oracle

 */
package Servicios;

import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class FechaService {

    Scanner insert = new Scanner(System.in);

    public Date fechaNacimiento() {
        System.out.println("Ingrese el dia de su nacimiento");
        int dia = insert.nextInt();
        System.out.println("Ingrese el mes de su nacimiento");
        int mes = insert.nextInt();
        System.out.println("Ingrese el anio de su nacimiento");
        int anio = insert.nextInt();

        return new Date(anio - 1900, mes-1, dia);
    }
    
    public Date fechaActual() {
        return new  Date();
    }
    
    public long diferencia(Date nac, Date actual ) {
        long edad= actual.getTime()-nac.getTime();
        edad= edad/(1000L * 60 * 60 * 24 * 365);
        return edad;
    }
}
