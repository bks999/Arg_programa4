/*
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
 */
package guia13ejercicio1;


import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class PersonaServicio {

    Scanner insert = new Scanner(System.in);
    Persona p1= new Persona();
    
    public boolean esMayorDeEdad() {
        int edad = p1.getEdad();
        return edad >= 18;
    }

    public void crearPersona() {

        System.out.println("Ingrese nombre");
        p1.setNombre(insert.next());
        System.out.println("Ingrese edad");
        p1.setEdad(insert.nextInt());
        System.out.println("Ingrese sexo: H para hombre/ M para mujer/ O para otro");
        do {
            p1.setSexo(insert.next());
            if (p1.getSexo().equalsIgnoreCase("O") || p1.getSexo().equalsIgnoreCase("H") || p1.getSexo().equalsIgnoreCase("M")) {
                break;
            } else {
                System.out.println("Error. Intentelo nuevamente");
            }
        } while (!p1.getSexo().equalsIgnoreCase("H") || !p1.getSexo().equalsIgnoreCase("M") || !p1.getSexo().equalsIgnoreCase("O"));

        System.out.println("Ingrese peso");
        p1.setPeso(insert.nextDouble());
        System.out.println("Ingrese altura");
        p1.setAltura(insert.nextDouble());
    }

    public int calcularIMC() {
        int pesoIdeal = 0;
        double imc = p1.getPeso() / (p1.getAltura() * p1.getAltura());
        if (imc < 20) {
            pesoIdeal = -1;
        } else if (imc >= 20 && imc <= 25) {
            pesoIdeal = 0;
        } else if (imc > 25) {
            pesoIdeal = 1;
        }
        return pesoIdeal;
    }
    public double porcentaje(int a, int b) {
         return a*100/(a+b);
    }
    public double porcentaje1(int a, int b, int c) {
         return a*100/(a+b+c);
    }
}
