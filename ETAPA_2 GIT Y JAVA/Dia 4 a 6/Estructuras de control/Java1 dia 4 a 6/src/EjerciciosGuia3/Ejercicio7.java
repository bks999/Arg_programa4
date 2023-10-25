package EjerciciosGuia3;

import java.util.Scanner;

/*
Realizar un programa que simule el funcionamiento de un dispositivo
RS232, este tipo de dispositivo lee cadenas enviadas por el usuario. Las cadenas
deben llegar con un formato fijo: tienen que ser de un máximo de 5 caracteres de
largo, el primer carácter tiene que ser X y el último tiene que ser una O.
Las secuencias leídas que respeten el formato se consideran correctas, la 
secuencia especial “&&&&&” marca el final de los envíos (llamémosla FDE), y 
toda secuencia distinta de FDE, que no respete el formato se considera 
incorrecta.
Al finalizar el proceso, se imprime un informe indicando la cantidad de lecturas 
correctas e incorrectas recibidas. Para resolver el ejercicio deberá investigar 
cómo se utilizan las siguientes funciones de Java Substring(), Length(), equals().
 */
/**
 *
 * @author Sol
 */
public class Ejercicio7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);
        int correcto = 0;
        int incorrecto = 0;
        String fde = "&&&&&";
        System.out.println("INGRESE UNA CADENA");
        String frase;
        do {
            frase = leer.nextLine();
            int largo = frase.length();
            String letra1 = frase.substring(0, 1);
            String letra2 = frase.substring((largo - 1), largo);
            
            if (frase.equals(fde)) {
                System.out.println("FIN DE ENVIOS");
                System.out.println("Se recibieron " + correcto + " cadenas correctas y " + incorrecto + " cadenas incorrectas");
                break;
            }
            if ((largo == 5) && ((letra1.equalsIgnoreCase("X")) && ((letra2.equalsIgnoreCase("O"))))) {
                System.out.println("CORRECTO - INGRESE UNA CADENA");
                correcto++;
            } else {
                System.out.println("INCORRECTO - INGRESE UNA CADENA");
                incorrecto++;
            }

        } while (!fde.equals(frase));
    }
}
