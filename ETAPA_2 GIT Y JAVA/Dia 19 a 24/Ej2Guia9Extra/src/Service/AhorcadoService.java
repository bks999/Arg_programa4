/*
Juego Ahorcado: Crear una clase Ahorcado (como el juego), la cual deberá contener como atributos, un vector
con la palabra a buscar, la cantidad de letras encontradas y la cantidad jugadas máximas que puede realizar el 
usuario. Definir los siguientes métodos en AhorcadoService:

Metodo crearJuego(): le pide la palabra al usuario y cantidad de jugadas máxima. Con la palabra del usuario, 
pone la longitud de la palabra, como la longitud del vector. Después ingresa la palabra en el vector, letra por 
letra, quedando cada letra de la palabra en un índice del vector. Y también, guarda la cantidad de jugadas 
máximas y el valor que ingresó el usuario.

Método longitud(): muestra la longitud de la palabra que se debe encontrar. Nota: buscar como se usa el vector.length.

Método buscar(letra):  este método recibe una letra dada por el usuario y busca si la letra ingresada es parte de 
la palabra o no. También informará si la letra estaba o no.

Método encontradas(letra):  que reciba una letra ingresada por el usuario y muestre cuantas letras han sido 
encontradas y cuántas le faltan. Este método además deberá devolver true si la letra estaba y false si la letra 
no estaba, ya que, cada vez que se busque una letra que no esté, se le restará uno a sus oportunidades.

Método intentos(): para mostrar cuántas oportunidades le queda al jugador.

Método juego(): el método juego se encargará de llamar todos los métodos previamente mencionados e 
informará cuando el usuario descubra toda la palabra o se quede sin intentos. Este método se llamará en el main.

 */
package Service;

import Entidades.AhorcadoEntidades;
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class AhorcadoService {

    Scanner insert = new Scanner(System.in);

    /*Metodo crearJuego(): le pide la palabra al usuario y cantidad de jugadas máxima. Con la palabra del usuario, 
pone la longitud de la palabra, como la longitud del vector. Después ingresa la palabra en el vector, letra por 
letra, quedando cada letra de la palabra en un índice del vector. Y también, guarda la cantidad de jugadas 
máximas y el valor que ingresó el usuario. */
    public void crearJuego(AhorcadoEntidades a) {
        System.out.println("Ingrese la palabra a adivinar");
        String p = insert.next(); //la palabra para adivinar
        char[] arr = new char[p.length()]; //largo del vector
        for (int i = 0; i < p.length(); i++) { //ingresando letras al vector
            arr[i] = p.charAt(i);
        }
        a.setPalabra(arr);
        System.out.println("Ingrese la cantidad de jugadas maximas");
        a.setJugadasMaximas(insert.nextInt());
    }
// --------------------------------------------------------------------------------------------------------------------------------------------

    /*Método longitud(): muestra la longitud de la palabra que se debe encontrar. Nota: buscar como se usa el vector.length. */
    public int longitud(AhorcadoEntidades a) {
        return a.getPalabra().length;
    }
// --------------------------------------------------------------------------------------------------------------------------------------------

    public char letra() {
        System.out.println("Ingrese una letra");
        char letra = insert.next().charAt(0);
        return letra;
    }
// --------------------------------------------------------------------------------------------------------------------------------------------

    /* Método buscar(letra):  este método recibe una letra dada por el usuario y busca si la letra ingresada es parte de 
la palabra o no. También informará si la letra estaba o no. */
    public boolean buscar(AhorcadoEntidades a, char letra) {
        boolean hay;
        int contHay = 0;
        for (int i = 0; i < a.getPalabra().length; i++) {
            if (letra == a.getPalabra()[i]) {
                contHay++;
                break;
            }
        }
        if (contHay > 0) {
            System.out.println("Mensaje: La letra pertenece a la palabra");
            hay = true;
        } else {
            System.out.println("Mensaje: La letra no pertenece a la palabra");
            hay = false;
        }
        return hay;
    }
// --------------------------------------------------------------------------------------------------------------------------------------------

    /*Método encontradas(letra):  que reciba una letra ingresada por el usuario y muestre cuantas letras han sido 
encontradas y cuántas le faltan. Este método además deberá devolver true si la letra estaba y false si la letra 
no estaba, ya que, cada vez que se busque una letra que no esté, se le restará uno a sus oportunidades. */
    public int encontradas(AhorcadoEntidades a) {
        char[] arr = new char[a.getPalabra().length];  //nuevo array para ingresar letra encontradas
        Arrays.fill(arr, '-'); //inicializar el array
        int encontradas = 0;
        int intentos = a.getJugadasMaximas();
        int aux = 0;
        do {
            char le = letra();
            System.out.println("Longitud de la palabra: " + longitud(a));
            boolean hay = buscar(a, le);
            System.out.println(hay);
            if (hay == true) {
                for (int i = 0; i < a.getPalabra().length; i++) {
                    if (le == a.getPalabra()[i]) {
                        encontradas++;
                        a.setLetrasEncontradas(encontradas);
                        System.out.println(encontradas);
                        arr[i] = le;
                        Arrays.fill(a.getPalabra(), i, (i + 1), '-');
                        Arrays.toString(a.getPalabra());
                        Arrays.toString(arr);
                        break;
                    }
                }
                System.out.println("Número de letras (encontradas, faltantes): (" + a.getLetrasEncontradas() + "," + (a.getPalabra().length - encontradas) + ")");
            } else {
                intentos--;
                System.out.println("Número de letras (encontradas, faltantes): (" + a.getLetrasEncontradas() + "," + (a.getPalabra().length - encontradas) + ")");
            }
            intentos(a);
            System.out.println("");
            System.out.println("----------------------------------------------");
            
        } while ((a.getLetrasEncontradas() == a.getPalabra().length));
        return intentos;
    }

    public void intentos(AhorcadoEntidades a) {
        int intentos = encontradas(a);
        System.out.println("Número de oportunidades restantes: " + intentos);
    }

    /*Método juego(): el método juego se encargará de llamar todos los métodos previamente mencionados e 
informará cuando el usuario descubra toda la palabra o se quede sin intentos. Este método se llamará en el main. */
    public void juego(AhorcadoEntidades a) {
        crearJuego(a);
        encontradas(a);
   //     intentos(a);

    }
}
