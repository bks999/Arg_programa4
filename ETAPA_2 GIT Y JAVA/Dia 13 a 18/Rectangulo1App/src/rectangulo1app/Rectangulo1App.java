/*
Crea una clase "Rectángulo" que tenga atributos "lado1" y "lado2" y un método "calcular_area" que calcule y 
devuelva el área del rectángulo. Luego crea un objeto "rectangulo1" de la clase "Rectángulo" con lados de
4 y 6 y imprime el área del rectángulo.
 */
package rectangulo1app;

/**
 *
 * @author Sol
 */
public class Rectangulo1App {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Rectangulo1 rectangulo1 = new Rectangulo1 (4,6);
       
        System.out.println("El area del rectangulo es: " + rectangulo1.calcular_area());
    }
    
}
