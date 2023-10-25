/*
Defina una clase llamada DivisionNumero. En el método main utilice un Scanner para leer dos
números en forma de cadena. A continuación, utilice el método parseInt() de la clase Integer,
para convertir las cadenas al tipo int y guardarlas en dos variables de tipo int. Por ultimo realizar
una división con los dos numeros y mostrar el resultado.
 */
package guia13ejercicio3;

/**
 *
 * @author Sol
 */
public class Guia13Ejercicio3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        DivisionNumero d = new DivisionNumero();
        boolean aux = true;
        do {
            try {
                
                d.divisionNumero();
                aux = true;
            } catch (ArithmeticException a) {
                System.out.println("error aritmetico (a)" );
                System.out.println(a.fillInStackTrace());
                aux = false;
            } catch (NumberFormatException b) {
                System.out.println("error de formato ingresado (b)");
                                System.out.println(b.fillInStackTrace());
                aux = false;
            } catch (IllegalArgumentException i) {
                System.out.println("error desconocido (i)");
                                System.out.println(i.fillInStackTrace());
                aux = false;
            } finally {
                if (aux == true) {
                    System.out.println("Fin de programa");
                                 
                }
            }
        } while (aux==false);
    }
}
