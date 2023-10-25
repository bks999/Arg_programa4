/*
Inicializar un objeto de la clase Persona ejercicio 3 de la guía 8 Servicios, a null y tratar
de invocar el método esMayorDeEdad() a través de ese objeto. Luego, englobe el código
con una cláusula try-catch para probar la nueva excepción que debe ser controlada.
 */
package guia13ejercicio1;

/**
 *
 * @author Sol
 */
public class Guia13Ejercicio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        PersonaServicio persona = new PersonaServicio();
        persona = null;
       
        try {  
            persona.esMayorDeEdad();
        } catch (NullPointerException e) {
            System.out.println("Error encontrado");
        }
    }
    
}
