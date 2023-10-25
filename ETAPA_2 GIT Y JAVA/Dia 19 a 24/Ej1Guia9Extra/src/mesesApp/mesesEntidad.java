/*
Crea una clase en Java donde declares una variable de tipo array de Strings que contenga los doce meses del
año, en minúsculas. A continuación, declara una variable mesSecreto de tipo String, y hazla igual a un elemento
del array (por ejemplo, mesSecreto = mes[9]. El programa debe pedir al usuario que adivine el mes secreto. 
Si el usuario acierta mostrar un mensaje, y si no lo hace, pedir que vuelva a intentar adivinar el mes secreto.  
Un ejemplo de ejecución del programa podría ser este:
Adivine el mes secreto. Introduzca el nombre del mes en minúsculas: febrero
No ha acertado. Intente adivinarlo introduciendo otro mes: agosto
¡Ha acertado!
 */
package mesesApp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class mesesEntidad {

    Scanner insert = new Scanner(System.in);
    private final String[] meses;

    public mesesEntidad() {
        meses = new String[12];
        meses[0] = "enero";
        meses[1] = "febrero";
        meses[2] = "marzo";
        meses[3] = "abril";
        meses[4] = "mayo";
        meses[5] = "junio";
        meses[6] = "julio";
        meses[7] = "agosto";
        meses[8] = "septiembre";
        meses[9] = "octubre";
        meses[10] = "noviembre";
        meses[11] = "diciembre";
    }

    public void mesSecreto() {
        int num = (int) (Math.random() * 12);
        String mesSecreto = meses[num];
        System.out.println(mesSecreto);
        System.out.println("Adivine el mes secreto. Introduzca el nombre del mes en minúsculas:");
        String mesUsuario;
        do {
            mesUsuario = insert.next();
            if (mesUsuario.equalsIgnoreCase(mesSecreto)) {
                System.out.println("¡Ha acertado!");
            } else {
                System.out.println("No ha acertado. Intente adivinarlo introduciendo otro mes:");
            }
        } while (!mesUsuario.equalsIgnoreCase(mesSecreto));

    }
}
