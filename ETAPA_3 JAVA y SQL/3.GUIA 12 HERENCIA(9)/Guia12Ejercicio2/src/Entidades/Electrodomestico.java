package Entidades;

import java.util.Scanner;

/*
Crear una superclase llamada Electrodoméstico con los siguientes atributos: precio, color,
consumo energético (letras entre A y F) y peso.
Los constructores que se deben implementar son los siguientes:
• Un constructor vacío.
• Un constructor con todos los atributos pasados por parámetro.
Los métodos a implementar son:
• Métodos getters y setters de todos los atributos.
• Método comprobarConsumoEnergetico(char letra): comprueba que la letra es correcta,
sino es correcta usara la letra F por defecto. Este método se debe invocar al crear el
objeto y no será visible.
• Método comprobarColor(String color): comprueba que el color es correcto, y si no lo es,
usa el color blanco por defecto. Los colores disponibles para los electrodomésticos son
blanco, negro, rojo, azul y gris. No importa si el nombre está en mayúsculas o en
minúsculas. Este método se invocará al crear el objeto y no será visible.
• Metodo crearElectrodomestico(): le pide la información al usuario y llena el
electrodoméstico, también llama los métodos para comprobar el color y el consumo. Al
precio se le da un valor base de $1000.
• Método precioFinal(): según el consumo energético y su tamaño, aumentará el valor del
precio. Esta es la lista de precios:
 */
/**
 *
 * @author Sol
 */
public class Electrodomestico {

    protected double precio;
    protected String color;
    protected char consumoEnergetico; //letras entre A y F
    protected double peso;
    Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public Electrodomestico() {
    }

    public Electrodomestico(double precio, String color, char consumoEnergetico, double peso) {
        this.precio = precio;
        this.color = color;
        this.consumoEnergetico = consumoEnergetico;
        this.peso = peso;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public char getConsumoEnergetico() {
        return consumoEnergetico;
    }

    public void setConsumoEnergetico(char consumoEnergetico) {
        this.consumoEnergetico = consumoEnergetico;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public void comprobarConsumoEnergetico(char letra) {

        switch (letra) {
            case 'a':
                break;
            case 'b':
                break;
            case 'c':
                break;
            case 'd':
                break;
            case 'e':
                break;
            case 'f':
                break;
            default:
                letra = 'f';
                break;
        }
    }

    public void comprobarColor(String color) {
        //blanco, negro, rojo, azul y gris
        color = color.toLowerCase();
        switch (color) {
            case "blanco":
                break;
            case "negro":
                break;
            case "rojo":
                break;
            case "azul":
                break;
            case "gris":
                break;
            default:
                color = "blanco";
                break;
        }
    }

    /*• Metodo crearElectrodomestico(): le pide la información al usuario y llena el
electrodoméstico, también llama los métodos para comprobar el color y el consumo. Al
precio se le da un valor base de $1000.
    protected double precio;
    protected String color;
    protected char consumoEnergetico; //letras entre A y F
    protected double peso;
     */
    public void crearElectrodomestico() {
        System.out.print("Ingrese el color: ");
        color = sc.next();
        System.out.print("Ingrese el tipo de consumo energetico: ");
        consumoEnergetico = sc.next().charAt(0);
        System.out.print("Ingrese el peso:");
        peso = sc.nextDouble();
        precio = 1000d;
        comprobarConsumoEnergetico(consumoEnergetico);
        comprobarColor(color);
    }

    /*• Método precioFinal(): según el consumo energético y su tamaño, aumentará el valor del
precio. Esta es la lista de precios: 
     */
    public double precioFinal() {
        switch (consumoEnergetico) {
            case 'a':
                precio += 1000;
                break;
            case 'b':
                precio += 800;
                break;
            case 'c':
                precio += 600;
                break;
            case 'd':
                precio += 500;
                break;
            case 'e':
                precio += 300;
                break;
            case 'f':
                precio += 100;
                break;
        }
        if (peso > 0 && peso < 20) {
            precio += 100;
        } else if (peso >= 20 && peso < 50) {
            precio += 500;
        } else if (peso >= 50 && peso < 80) {
            precio += 800;
        } else if (peso >= 80) {
            precio += 1000;
        }
        return precio;
    }
}
