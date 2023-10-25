/*
El precio de una habitación debe calcularse de acuerdo con la siguiente fórmula:
PrecioHabitación = $50 + ($1 x capacidad del hotel) + (valor agregado por restaurante) + (valor
agregado por gimnasio) + (valor agregado por limosinas).
Donde:
Valor agregado por el restaurante:
• $10 si la capacidad del restaurante es de menos de 30 personas.
• $30 si está entre 30 y 50 personas.
• $50 si es mayor de 50.
Valor agregado por el gimnasio:
• $50 si el tipo del gimnasio es A.
• $30 si el tipo del gimnasio es B.
Valor agregado por las limosinas:
• $15 por la cantidad de limosinas del hotel.
 */
package Entidades;

/**
 *
 * @author Sol
 */
public class Hotel4Stars extends Hotel {

    private boolean gimnasio; //tipo A true y tipo B false
    private String nombreRestaurante;
    private int capacidadRestaurante;

    public Hotel4Stars() {
    }

    public Hotel4Stars(boolean gimnasio, String nombreRestaurante, int capacidadRestaurante, int habitaciones, int camas, int pisos, double precioHabitacion, String nombre, String direccion, String localidad, String gerente) {
        super(habitaciones, camas, pisos, precioHabitacion, nombre, direccion, localidad, gerente);
        this.gimnasio = gimnasio;
        this.nombreRestaurante = nombreRestaurante;
        this.capacidadRestaurante = capacidadRestaurante;
    }

    public double getPrecioHabitacion() {
        return precioHabitacion;
    }

    public void setPrecioHabitacion(double precioHabitacion) {
        this.precioHabitacion = precioHabitacion;
    }

    @Override
    public double valorAgregadoRestaurante() {
        double valorRestaurante = 0;
        if (capacidadRestaurante < 30) {
            valorRestaurante = 10;
        } else if (capacidadRestaurante >= 30 && capacidadRestaurante <= 50) {
            valorRestaurante = 30;
        } else if (capacidadRestaurante > 50) {
            valorRestaurante = 50;
        }
        return valorRestaurante;
    }

    @Override
    public double valorAgregadoGimnasio() {
        double valorGimnasio = 0;
        if (gimnasio == true) {
            valorGimnasio = 50;
        } else {
            valorGimnasio = 30;
        }
        return valorGimnasio;
    }

    @Override
    public double valorAgregadoLimosina() {
        return 0; //    Los hoteles 4 estrellas no cuentan con limosinas
    }

    @Override
    public double precioHabitacion() {
        precioHabitacion = (50 + (1 * habitaciones*pisos) + valorAgregadoRestaurante() + valorAgregadoGimnasio() + valorAgregadoLimosina());
        return precioHabitacion;
    }

    @Override
    public String toString() {
        return super.toString() +
                "\n Hotel4Stars: " + "gimnasio=" + gimnasio + ", nombreRestaurante=" + nombreRestaurante + ", capacidadRestaurante=" + capacidadRestaurante + '}';
    }

}
