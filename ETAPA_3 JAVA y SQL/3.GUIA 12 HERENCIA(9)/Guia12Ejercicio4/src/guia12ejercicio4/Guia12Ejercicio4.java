/*
Se plantea desarrollar un programa que nos permita calcular el área y el perímetro de formas
geométricas, en este caso un círculo y un rectángulo. Ya que este cálculo se va a repetir en las
dos formas geométricas, vamos a crear una Interfaz, llamada calculosFormas que tendrá, los
dos métodos para calcular el área, el perímetro y el valor de PI como constante.
Desarrollar el ejercicio para que las formas implementen los métodos de la interfaz y se
calcule el área y el perímetro de los dos. En el main se crearán las formas y se mostrará el
resultado final.
Área circulo: PI * radio ^ 2 / Perímetro circulo: PI * diámetro.
Área rectángulo: base * altura / Perímetro rectángulo: (base + altura) * 2.
 */
package guia12ejercicio4;

import java.text.DecimalFormat;

/**
 *
 * @author Sol
 */
public class Guia12Ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       Circulo c = new Circulo();
       Rectangulo r = new Rectangulo();
       DecimalFormat decimal = new DecimalFormat("#,##0.00"); //Otra manera de reducir la cantidad de decimales
       c.setRadio(10);
       r.setBase(2);
       r.setAltura(4);
       
        System.out.printf("El area del circulo es: %10.2f.\n" , c.area()); //System.out.printf() donde 10 son los espacios antes del punto, 2 despues del punto
        System.out.println("El perimetro del circulo es: " + decimal.format(c.perimetro()));
        System.out.println("El area del rectangulo es: " + r.area());
        System.out.println("El perimetro del rectangulo es: " + r.perimetro());
    }
    
}
