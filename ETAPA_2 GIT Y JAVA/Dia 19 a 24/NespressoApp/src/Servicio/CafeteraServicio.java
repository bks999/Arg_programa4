/*
CafeteraServicio en el paquete Servicios con los siguiente:
Método llenarCafetera(): hace que la cantidad actual sea igual a la capacidad máxima. 
Método servirTaza(int): se pide el tamaño de una taza vacía, el método recibe el tamaño de la taza y simula 
la acción de servir la taza con la capacidad indicada. Si la cantidad actual de café “no alcanza” para llenar la 
taza, se sirve lo que quede. El método le informará al usuario si se llenó o no la taza, y de no haberse llenado 
en cuanto quedó la taza.
Método vaciarCafetera(): pone la cantidad de café actual en cero. 
Método agregarCafe(int): se le pide al usuario una cantidad de café, el método lo recibe y se añade a la 
cafetera la cantidad de café indicada.
 */
package Servicio;

import Entidades.Cafetera;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CafeteraServicio {

    Cafetera caf = new Cafetera();
    Scanner insert = new Scanner(System.in);

    public void llenarCafetera() {
        caf.setCantidadActual(caf.getCapacidadMaxima());
    }

    public void servirTaza() {
        System.out.println("Elija el tamaño de su taza ingresando el numero correspondiente");
        System.out.println("1-Ristretto - 25 ml");
        System.out.println("2-Espresso - 40 ml");
        System.out.println("3-Lungo - 110 ml");
        System.out.println("4-Americano - 110 ml");
        System.out.println("5-Gran Lungo - 150 ml");
        System.out.println("6-Mug - 230 ml");
        System.out.println("7-Alto - 414 ml");
        int taza = insert.nextInt();
        int capTaza = 0;
        switch (taza) {
            case 1:
                capTaza = 25;
                break;
            case 2:
                capTaza = 40;
                break;
            case 3:
                capTaza = 110;
                break;
            case 4:
                capTaza = 120;
                break;
            case 5:
                capTaza = 150;
                break;
            case 6:
                capTaza = 230;
                break;
            case 7:
                capTaza = 414;
                break;
        }
        if (caf.getCantidadActual() > capTaza) {
            System.out.println("Sirviendo una taza llena de " + capTaza + "ml.");
            caf.setCantidadActual(caf.getCantidadActual()-capTaza);
        } else {
            System.out.println("Cafe insuficiente.. sirviendo " + caf.getCantidadActual() + "ml.");
            caf.setCantidadActual(0);
        }
    }
    public void vaciarCafetera() {
        caf.setCantidadActual(0);
    }
    public void agregarCafe() {
        System.out.println("Ingresa la cantidad de cafe que deseas agregar a la cafetera");
        int cafeAgregado=insert.nextInt();
        if (cafeAgregado>caf.getCapacidadMaxima() && (cafeAgregado+caf.getCantidadActual())>caf.getCapacidadMaxima()){
            System.out.println("Excede la capacidad maxima");
        } else {
            caf.setCantidadActual(caf.getCantidadActual()+cafeAgregado);
            System.out.println("La cantidad actual es de " + caf.getCantidadActual() + "ml.");
        }
        
        
    }
}


