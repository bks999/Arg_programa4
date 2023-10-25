package guia13ejercicio3;

import java.util.InputMismatchException;
import java.util.Scanner;

/*
Defina una clase llamada DivisionNumero. En el método main utilice un Scanner para leer dos
números en forma de cadena. A continuación, utilice el método parseInt() de la clase Integer,
para convertir las cadenas al tipo int y guardarlas en dos variables de tipo int. Por ultimo realizar
una división con los dos numeros y mostrar el resultado.
 */
/**
 *
 * @author Sol
 */
public class DivisionNumero {

    public void divisionNumero() {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        boolean bandera = true;
        do {
            try {
                bandera = true;
                System.out.println("Ingrese dos numeros");
                String cad1 = sc.next();
                String cad2 = sc.next();

                int num1 = Integer.parseInt(cad1);
                int num2 = Integer.parseInt(cad2);

                int division = num1 / num2;
                System.out.println("El resultado de la division de estos numeros es: " + division);
            } catch (InputMismatchException m) {
                System.out.println("error de scanner " + m.fillInStackTrace());
                   bandera = false;
            }

        } while (bandera == false);
    }
}
