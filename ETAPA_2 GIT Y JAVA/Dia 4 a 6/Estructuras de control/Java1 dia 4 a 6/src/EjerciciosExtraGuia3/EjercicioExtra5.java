/*
 Una obra social tiene tres clases de socios:
Los socios tipo ‘A’ abonan una cuota mayor, pero tienen un 50% de descuento en todos los tipos de tratamientos.
Los socios tipo ‘B’ abonan una cuota moderada y tienen un 35% de descuento para los mismos tratamientos que los socios del tipo A.
Los socios que menos aportan, los de tipo ‘C’, no reciben descuentos sobre dichos tratamientos.
Solicite una letra (carácter) que representa la clase de un socio, y luego un valor real que represente el costo del tratamiento (previo al descuento) y determine el importe en efectivo a pagar por dicho socio.

 */
package EjerciciosExtraGuia3;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class EjercicioExtra5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        String tipo;
        System.out.println("Ingrese el valor del tratamiento a realizarse");
        int valor = leer.nextInt();
        System.out.println("Ingrese su clase de socio (A/B/C)");
        do {
            tipo = leer.next();
            tipo = tipo.toUpperCase();
           
            switch (tipo) {
                case "A":
                    System.out.println("El valor final de su tratamiento es de " + (valor*50/100) + " pesos.");
                    break;
                case "B":
                    System.out.println("El valor final de su tratamiento es de " + (valor*65/100) + " pesos.");
                    break;
                case "C":   
                    System.out.println("El valor final de su tratamiento es de " + valor + " pesos.");
                    break;
                default:
                    System.out.println("Error. Vuelva a ingresar su clase de socio (A/B/C)");
        }
      
        }while ((!"C".equals(tipo)) && (!"B".equals(tipo)) && (!"A".equals(tipo)));
    } //se puede usar bandera booleana
    
}
/* Scanner entrada = new Scanner(System.in);
        char tipoSocio;
        
        float costo, importe;
        
        
        boolean bandera = false;
        //System.out.println("tipo Socio: "+ tipoSocio);
        
        do {            
            System.out.print("Ingrese el tipo de Socio: ");
            tipoSocio = entrada.next().toUpperCase().charAt(0);
            System.out.println("Ingrese el costo del tratamiento: ");
            costo = entrada.nextFloat();
            
            switch (tipoSocio) {
                case 'A':
                    importe = (float) (costo - (costo * 0.5));
                    System.out.print("El importe a pagar es de $ "+ importe);
                    bandera = true;
                    break;
                case 'B':
                    importe = (float) (costo - (costo * 0.35));
                    System.out.print("El importe a pagar es de $ "+ importe);
                    bandera = true;
                    break;
                case 'C':
                    importe = costo;
                    System.out.print("El importe a pagar es de $ "+ importe);
                    bandera = true;
                    break;    
                default:
                    //throw new AssertionError();
                    System.out.println("Tipo de socio incorrecto, intente nuevamente !");
            }
        } while (!bandera);
        
        System.out.println("");
//De Cesar Daniel Carrizo
*/