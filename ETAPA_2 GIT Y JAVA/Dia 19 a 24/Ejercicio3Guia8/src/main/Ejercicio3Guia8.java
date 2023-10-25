/*
Realizar una clase llamada Persona en el paquete de entidades que tengan los siguientes atributos: nombre, 
edad, sexo (‘H’ para hombre, ‘M’ para mujer, ‘O’ para otro), peso y altura. Si desea añadir algún otro atributo, 
puede hacerlo. Agregar constructores, getters y setters.
En el paquete Servicios crear PersonaServicio con los siguientes 3 métodos:
Método esMayorDeEdad(): indica si la persona es mayor de edad. La función devuelve un booleano.
Metodo crearPersona(): el método crear persona, le pide los valores de los atributos al usuario y después se 
le asignan a sus respectivos atributos para llenar el objeto Persona. Además, comprueba que el sexo introducido 
sea correcto, es decir, H, M o O. Si no es correcto se deberá mostrar un mensaje


Método calcularIMC(): calculara si la persona está en su peso ideal (peso en kg/(altura^2 en mt2)). Si esta 
fórmula da por resultado un valor menor que 20, significa que la persona está por debajo de su peso ideal y 
la función devuelve un -1. Si la fórmula da por resultado un número entre 20 y 25 (incluidos), significa que la 
persona está en su peso ideal y la función devuelve un 0. Finalmente, si el resultado de la fórmula es un valor 
mayor que 25 significa que la persona tiene sobrepeso, y la función devuelve un 1.

A continuación, en la clase main hacer lo siguiente:
Crear 4 objetos de tipo Persona con distintos valores, a continuación, llamaremos todos los métodos para cada 
objeto, deberá comprobar si la persona está en su peso ideal, tiene sobrepeso o está por debajo de su peso
ideal e indicar para cada objeto si la persona es mayor de edad.
Por último, guardaremos los resultados de los métodos calcularIMC y esMayorDeEdad en distintas 
variables(arrays), para después calcular un porcentaje de esas 4 personas cuantas están por debajo de su
peso, cuantas en su peso ideal y cuantos, por encima, y también calcularemos un porcentaje de cuantos
son mayores de edad y cuantos menores. Para esto, podemos crear unos métodos adicionales.

 */
package main;

import Servicios.PersonaServicio;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio3Guia8 {

    public Scanner insert = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//    String nombre;
//    int edad;
//    String sexo;
//    double peso;
//    double altura;

        PersonaServicio pe1 = new PersonaServicio();
        PersonaServicio pe2 = new PersonaServicio();
        PersonaServicio pe3 = new PersonaServicio();
        PersonaServicio pe4 = new PersonaServicio();

        boolean[] mayor = new boolean[4];
        int[] imc = new int[4];

        System.out.println("============Persona 1=============");
        pe1.crearPersona();
        System.out.println("La persona es mayor de edad?");

        if (!pe1.esMayorDeEdad()) {
            System.out.println("No");
        } else {
            System.out.println("Si");
        }
        mayor[0] = pe1.esMayorDeEdad();

        pe1.calcularIMC();
        System.out.println(pe1.calcularIMC());
        imc[0] = pe1.calcularIMC();
        switch (pe1.calcularIMC()) {
            case -1:
                System.out.println("La persona esta por debajo de su peso ideal");
                break;
            case 0:
                System.out.println("La persona esta en su peso ideal");
                break;
            case 1:
                System.out.println("La persona esta en sobrepeso");
                break;
        }
        System.out.println("============Persona 2=============");
        pe2.crearPersona();
        System.out.println("La persona es mayor de edad?");

        if (!pe2.esMayorDeEdad()) {
            System.out.println("No");
        } else {
            System.out.println("Si");
        }
        mayor[1] = pe2.esMayorDeEdad();
        pe2.calcularIMC();
        imc[1] = pe2.calcularIMC();
        switch (pe2.calcularIMC()) {
            case -1:
                System.out.println("La persona esta por debajo de su peso ideal");
                break;
            case 0:
                System.out.println("La persona esta en su peso ideal");
                break;
            case 1:
                System.out.println("La persona esta en sobrepeso");
                break;
        }
        System.out.println("============Persona 3=============");
        pe3.crearPersona();
        System.out.println("La persona es mayor de edad?");

        if (!pe3.esMayorDeEdad()) {
            System.out.println("No");
        } else {
            System.out.println("Si");
        }
        mayor[2] = pe3.esMayorDeEdad();
        pe3.calcularIMC();
        imc[2] = pe3.calcularIMC();
        switch (pe3.calcularIMC()) {
            case -1:
                System.out.println("La persona esta por debajo de su peso ideal");
                break;
            case 0:
                System.out.println("La persona esta en su peso ideal");
                break;
            case 1:
                System.out.println("La persona esta en sobrepeso");
                break;
        }
        System.out.println("============Persona 4=============");
        pe4.crearPersona();
        System.out.println("La persona es mayor de edad?");

        if (!pe4.esMayorDeEdad()) {
            System.out.println("No");
        } else {
            System.out.println("Si");
        }
        mayor[3] = pe4.esMayorDeEdad();
        pe4.calcularIMC();
        imc[3] = pe4.calcularIMC();
        switch (pe4.calcularIMC()) {
            case -1:
                System.out.println("La persona esta por debajo de su peso ideal");
                break;
            case 0:
                System.out.println("La persona esta en su peso ideal");
                break;
            case 1:
                System.out.println("La persona esta en sobrepeso");
                break;
        }

        System.out.println("===================================");

        int contMayor = 0;
        int contMenor = 0;
        for (int i = 0; i < 4; i++) {
            if (mayor[i] == true) {
                contMayor++;
            } else {
                contMenor++;
            }
        }
        System.out.println("El porcentaje de personas mayores");
        System.out.println(pe1.porcentaje(contMayor, contMenor) + "%");
        System.out.println("El porcentaje de personas menores");
        System.out.println(pe1.porcentaje(contMenor, contMayor) + "%");
        int contPesoNormal = 0;
        int contPesoDebajo = 0;
        int contSobrepeso = 0;
        for (int k = 0; k < 4; k++) {
            switch (imc[k]) {
                case -1:
                    contPesoDebajo++;
                    break;
                case 0:
                    contPesoNormal++;
                    break;
                case 1:
                    contSobrepeso++;
                    break;
            }
        }
        System.out.println("El porcentaje de personas con peso normal");
        System.out.println(pe1.porcentaje1(contPesoNormal, contPesoDebajo, contSobrepeso) + "%");
        System.out.println("El porcentaje de personas con sobrepeso");
        System.out.println(pe1.porcentaje1(contSobrepeso, contPesoNormal, contPesoDebajo) + "%");
        System.out.println("El porcentaje de personas con peso por debajo de lo normal");
        System.out.println(pe1.porcentaje1(contPesoDebajo, contPesoNormal, contSobrepeso) + "%");
    }
}
