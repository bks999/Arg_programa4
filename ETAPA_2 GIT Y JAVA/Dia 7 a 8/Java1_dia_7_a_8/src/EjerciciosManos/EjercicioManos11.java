/*
Escribir un programa que procese una secuencia de caracteres ingresada por 
teclado y terminada en punto, y luego codifique la palabra o frase ingresada 
de la siguiente manera: cada vocal se reemplaza por el carácter que se indica
en la tabla y el resto de los caracteres (incluyendo a las vocales acentuadas)
se mantienen sin cambios.
a e i o u
@ # $ % *

Realice un subprograma que reciba una secuencia de caracteres y retorne 
la codificación correspondiente. Utilice la estructura “según” para la transformación. 
Por ejemplo, si el usuario ingresa:     Ayer, lunes, salimos a las once y 10.
La salida del programa debería ser:  @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.

 */
package EjerciciosManos;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioManos11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String frase;

        System.out.println("Ingrese una palabra");
        frase = sc.nextLine();

        transformar(frase.toLowerCase());

    }

    public static void transformar(String frase) {

        String aux = "";

        for (int i = 0; i < frase.length(); i++) {
            switch (frase.substring(i, i + 1)) {
                case "a":
                    aux = frase.substring(0, i);
                    aux = aux.concat("@");
                    aux = aux.concat(frase.substring(i + 1, frase.length()));
                    frase = aux;
                    break;
                case "e":
                    aux = frase.substring(0, i);
                    aux = aux.concat("#");
                    aux = aux.concat(frase.substring(i + 1, frase.length()));
                    frase = aux;
                    break;
                case "i":
                    aux = frase.substring(0, i);
                    aux = aux.concat("$");
                    aux = aux.concat(frase.substring(i + 1, frase.length()));
                    frase = aux;
                    break;
                case "o":
                    aux = frase.substring(0, i);
                    aux = aux.concat("%");
                    aux = aux.concat(frase.substring(i + 1, frase.length()));
                    frase = aux;
                    break;
                case "u":
                    aux = frase.substring(0, i);
                    aux = aux.concat("*");
                    aux = aux.concat(frase.substring(i + 1, frase.length()));
                    frase = aux;
                    break;
            }
        }
        System.out.println(frase);

//		frase = frase.replaceAll("[aeiou]", "@"); //Reemplaza aeiou por #
//		frase = frase.replaceFirst("a", "@"); //Reemplaza la primera "a" encontrada por "@"
//		frase = frase.replace("a", "@"); //Reemplaza todas las "a" por "@"
    }
}
           