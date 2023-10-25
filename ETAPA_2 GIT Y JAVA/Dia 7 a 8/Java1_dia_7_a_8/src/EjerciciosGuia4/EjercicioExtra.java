/*
  Necesitamos mostrar un contador con 3 digitos (X-X-X), que muestre los numeros del 0-
0-0 al 9-9-9, con la particularidad que cada vez que aparezca un 3 lo sustituya por una E.
Ejemplo:
0-0-0
0-0-1
0-0-2
0-0-E
0-0-4
0-1-2
0-1-E
 */
package EjerciciosGuia4;

/**
 *
 * @author Sol
 */
public class EjercicioExtra {

    public static void main(String[] args) {

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                for (int k = 0; k < 10; k++) {
                    String salida = (i + " - " + j + " - " + k);

                    System.out.println(tres(salida));
                }
            }
        }
    }

    public static String tres(String salida) {
        String cadena = "";

        for (int z = 0; z < salida.length(); z++) {
            if (salida.substring(z, z + 1).equals("3")) {
                cadena += "E";
            } else {
                cadena += salida.substring(z, z + 1);
            }
        }
        return cadena;
    }
}
