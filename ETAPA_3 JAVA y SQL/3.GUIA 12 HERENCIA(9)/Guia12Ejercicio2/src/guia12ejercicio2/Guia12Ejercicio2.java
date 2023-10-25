/*
Finalmente, en el main debemos realizar lo siguiente:
Vamos a crear una Lavadora y un Televisor y llamar a los métodos necesarios para mostrar
el precio final de los dos electrodomésticos.
 */
package guia12ejercicio2;

import Entidades.Lavadora;
import Entidades.Televisor;

/**
 *
 * @author Sol
 */
public class Guia12Ejercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Lavadora lavadora1 = new Lavadora();
        Televisor televisor1 = new Televisor();
        lavadora1.crearLavadora();
        System.out.println("El precio final del lavarropas es: $" + lavadora1.precioFinal());
        televisor1.crearTelevisor();
        System.out.println("El precio final del televisor es: $" + televisor1.precioFinal());
    }

}
