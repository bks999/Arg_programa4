/*
 Crear una clase Rectángulo que modele rectángulos por medio de un atributo 
privado base y un atributo privado altura. La clase incluirá un método para 
crear el rectángulo con los datos del Rectángulo dados por el usuario. También
incluirá un método para calcular la superficie del rectángulo y un método para
calcular el perímetro del rectángulo. Por último, tendremos un método que 
dibujará el rectángulo mediante asteriscos usando la base y la altura. Se 
deberán además definir los métodos getters, setters y constructores 
correspondientes.
Superficie = base * altura / Perímetro = (base + altura) * 2.

 */
package rectanguloapp;

/**
 *
 * @author Sol
 */
public class RectanguloApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Rectangulo rect1 = new Rectangulo ();
        rect1.crearRectangulo();
        System.out.println("===================================");
        System.out.println("PERIMETRO: " + rect1.perimetroRectangulo());
        System.out.println("===================================");
        System.out.println("SUPERFICIE: " + rect1.superficieRectangulo());
        System.out.println("===================================");
        rect1.dibujarRectangulo();
    }
    
}
