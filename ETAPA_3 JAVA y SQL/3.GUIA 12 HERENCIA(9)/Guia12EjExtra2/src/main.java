
import Entidades.Edificio;
import Entidades.EdificioDeOficinas;
import Entidades.Polideportivo;
import java.util.ArrayList;
import java.util.Scanner;

/*
Crear una superclase llamada Edificio con los siguientes atributos: ancho, alto y largo. La clase
edificio tendrá como métodos:
• Método calcularSuperficie(): calcula la superficie del edificio.
• Método calcularVolumen(): calcula el volumen del edifico.
Estos métodos serán abstractos y los implementarán las siguientes clases:
• Clase Polideportivo con su nombre y tipo de instalación que puede ser Techado o
Abierto, esta clase implementará los dos métodos abstractos y los atributos del padre.
• Clase EdificioDeOficinas con sus atributos número de oficinas, cantidad de personas
por oficina y número de pisos. Esta clase implementará los dos métodos abstractos y
los atributos del padre.
De esta clase nos interesa saber cuántas personas pueden trabajar en todo el edificio, el
usuario dirá cuántas personas entran en cada oficina, cuantas oficinas y el número de piso
(suponiendo que en cada piso hay una oficina). Crear el método cantPersonas(), que muestre
cuantas personas entrarían en un piso y cuantas en todo el edificio.

16
Por último, en el main vamos a crear un ArrayList de tipo Edificio. El ArrayList debe contener
dos polideportivos y dos edificios de oficinas. Luego, recorrer este array y ejecutar los
métodos calcularSuperficie y calcularVolumen en cada Edificio. Se deberá mostrar la
superficie y el volumen de cada edificio.
Además de esto, para la clase Polideportivo nos interesa saber cuántos polideportivos son
techados y cuantos abiertos. Y para la clase EdificioDeOficinas deberemos llamar al método
cantPersonas() y mostrar los resultados de cada edificio de oficinas.
 */
/**
 *
 * @author Sol
 */
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        ArrayList<Edificio> edificios = new ArrayList<>();
        Edificio poli1 = new Polideportivo();
        Edificio poli2 = new Polideportivo();
        Edificio ofi1 = new EdificioDeOficinas();
        Edificio ofi2 = new EdificioDeOficinas();

        edificios.add(poli1);
        edificios.add(poli2);
        edificios.add(ofi1);
        edificios.add(ofi2);

        for (Edificio edificio : edificios) {
            if (edificio instanceof Polideportivo) {
                System.out.println("Ingrese el nombre del polideportivo");
                ((Polideportivo) edificio).setNombre(sc.next());
                System.out.println("Este establecimiento es techado? (si/no)");
                String resp;
                do {
                    resp = sc.next();
                    if (resp.equalsIgnoreCase("si")) {
                        ((Polideportivo) edificio).setTechado(true);
                    } else if (resp.equalsIgnoreCase("no")) {
                        ((Polideportivo) edificio).setTechado(false);
                    }
                    if (!resp.equalsIgnoreCase("si") && !resp.equalsIgnoreCase("no")) {
                        System.out.println("Respuesta incorrecta.");
                    }
                } while (!resp.equalsIgnoreCase("si") && !resp.equalsIgnoreCase("no"));

                System.out.println("Ingrese las medidas del edificio");
                System.out.println("Ancho: ");
                edificio.setAncho(sc.nextDouble());
                System.out.println("Alto: ");
                edificio.setAlto(sc.nextDouble());
                System.out.println("Largo: ");
                edificio.setLargo(sc.nextDouble());

                System.out.println("La superficie del edificio " + ((Polideportivo) edificio).getNombre() + " es " + edificio.calcularSuperficie());
                System.out.println("El volumen del edificio " + ((Polideportivo) edificio).getNombre() + " es " + edificio.calcularVolumen());
                if (((Polideportivo) edificio).isTechado()) {
                    System.out.println("Este edificio es techado");
                } else {
                    System.out.println("Este edificio es de tipo abierto");
                }
            }
            if (edificio instanceof EdificioDeOficinas) {
                ((EdificioDeOficinas) edificio).cantPersonas();
                System.out.println("Ingrese las medidas del edificio");
                System.out.println("Ancho: ");
                edificio.setAncho(sc.nextDouble());
                System.out.println("Alto: ");
                edificio.setAlto(sc.nextDouble());
                System.out.println("Largo: ");
                edificio.setLargo(sc.nextDouble());

                System.out.println("La superficie del edificio es " + edificio.calcularSuperficie());
                System.out.println("El volumen del edificio es " + edificio.calcularVolumen());
            }
        }
    }
}
