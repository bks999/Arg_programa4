/*
Definir una clase llamada Puntos que contendrá las coordenadas de dos puntos, sus atributos serán, x1, y1, x2, 
y2, siendo cada x e y un punto. Generar un objeto puntos usando un método crearPuntos() que le pide al usuario 
los dos números y los ingresa en los atributos del objeto. Después, a través de otro método calcular y devolver la 
distancia que existe entre los dos puntos que existen en la clase Puntos. Para conocer como calcular la distancia
entre dos puntos consulte el siguiente link:
http://www.matematicatuya.com/GRAFICAecuaciones/S1a.html

 */
package puntosapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Puntos {

    public double x1;
    public double y1;
    public double x2;
    public double y2;

    public Puntos() {
    }

    public Puntos(double x1, double y1, double x2, double y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
    }

    public void crearPuntos() {
        Scanner insert = new Scanner(System.in);
        //coordenadas punto1
        System.out.println("Ingrese el valor de x1 del punto1");
        this.x1 = insert.nextDouble();
        System.out.println("Ingrese el valor de y1 del punto1");
        this.y1 = insert.nextDouble();

        //coordenadas punto2
        System.out.println("Ingrese el valor de x2 del punto2");
        this.x2 = insert.nextDouble();
        System.out.println("Ingrese el valor de y2 del punto2");
        this.y2 = insert.nextDouble();
    }

    public double calcularDistancia() {
        return (Math.sqrt((Math.pow((x2-x1),2))+(Math.pow((y2-y1),2))));
    }

}
