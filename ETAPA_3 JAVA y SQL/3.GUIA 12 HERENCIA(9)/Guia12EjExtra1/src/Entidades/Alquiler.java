/*
En un puerto se alquilan amarres para barcos de distinto tipo. Para cada Alquiler se guarda: el
nombre, documento del cliente, la fecha de alquiler, fecha de devolución, la posición del
amarre y el barco que lo ocupará.

 */
package Entidades;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Alquiler {

    private String nombreCliente;
    private int documento;
    private LocalDate fechaAlquiler;
    private LocalDate fechaDevolucion;
    private int posicionAmarre;
    private Barco barco;
    Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public Alquiler() {
    }

    public Alquiler(String nombreCliente, int documento, LocalDate fechaAlquiler, LocalDate fechaDevolucion, int posicionAmarre, Barco barco) {
        this.nombreCliente = nombreCliente;
        this.documento = documento;
        this.fechaAlquiler = fechaAlquiler;
        this.fechaDevolucion = fechaDevolucion;
        this.posicionAmarre = posicionAmarre;
        this.barco = barco;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public LocalDate getFechaAlquiler() {
        return fechaAlquiler;
    }

    public void setFechaAlquiler(LocalDate fechaAlquiler) {
        this.fechaAlquiler = fechaAlquiler;
    }

    public LocalDate getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(LocalDate fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public int getPosicionAmarre() {
        return posicionAmarre;
    }

    public void setPosicionAmarre(int posicionAmarre) {
        this.posicionAmarre = posicionAmarre;
    }

    public Barco getBarco() {
        return barco;
    }

    public void setBarco(Barco barco) {
        this.barco = barco;
    }

    public double calcularAlquiler(Barco barco, LocalDate fecha1, LocalDate fecha2) {
        int dias = (int) ChronoUnit.DAYS.between(fecha1, fecha2);
        double mod = barco.calcularModulo();
        return (dias * mod);
    }

    public void crearCliente() {
        Alquiler al = new Alquiler();
        System.out.println("Ingrese los datos del cliente");
        System.out.print("Nombre: ");
        nombreCliente= sc.next();
        System.out.print("Documento: ");
        documento = sc.nextInt();
        System.out.println("fecha de inicio de alquiler: (dia/mes/anio)");
        System.out.print("Dia: ");
        int dia = sc.nextInt();
        System.out.print("Mes: ");
        int mes = sc.nextInt();
        System.out.print("Anio: ");
        int anio = sc.nextInt();
        fechaAlquiler = LocalDate.of(anio, mes, dia);
        
        System.out.println("fecha de devolucion: (dia/mes/anio)");
        System.out.print("Dia: ");
        int dia1 = sc.nextInt();
        System.out.print("Mes: ");
        int mes1 = sc.nextInt();
        System.out.print("Anio: ");
        int anio1 = sc.nextInt();
        fechaDevolucion = LocalDate.of(anio1, mes1, dia1);
        
        posicionAmarre= (int) (Math.random() * 10);
        System.out.println("Se le asignara la posicion de amarre: " + posicionAmarre);
        System.out.println("Elija el barco de su posesion:");
        System.out.println("1 - VELERO");
        System.out.println("2 - BARCO A MOTOR");
        System.out.println("3- BARCO DE LUJO");
        int opcion;

        do {
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    Barco b = new Velero(((int) (Math.random() * 2 + 1)), ((int) (Math.random() * 999999 + 100000)), ((int) (Math.random() * 90 + 30)), ((int) (Math.random() * 2023 + 2000)));
                    barco = b;
                    System.out.printf("El precio final del alquiler es $%.2f.\n" , al.calcularAlquiler(b, fechaAlquiler, fechaDevolucion));
                    break;
                case 2:
                    Barco b1 = new BarcoAMotor(((int) (Math.random() * 300 + 10)), ((int) (Math.random() * 999999 + 100000)), (Math.random() * 90 + 4.5), ((int) (Math.random() * 2023 + 2000)));
                    barco = b1;
                    System.out.printf("El precio final del alquiler es $%.2f.\n" , al.calcularAlquiler(b1, fechaAlquiler, fechaDevolucion));
                    break;
                case 3:
                    Barco b2 = new YateLujo(((int) (Math.random() * 13600 + 2700)), (int) (Math.random() * 10 + 2), ((int) (Math.random() * 999999 + 100000)), ((int) (Math.random() * 60 + 18)), ((int) (Math.random() * 2023 + 2000)));
                    barco = b2;
                    System.out.printf("El precio final del alquiler es $%.2f.\n" , al.calcularAlquiler(b2, fechaAlquiler, fechaDevolucion));
                    break;
                default:
                    System.out.println("Respuesta incorrecta");
                    System.out.println("");
                    break;
            }
        } while (opcion != 1 && opcion != 2 && opcion != 3);
    }

    @Override
    public String toString() {
        return "Alquiler{" + "nombreCliente=" + nombreCliente + ", documento=" + documento + ", fechaAlquiler=" + fechaAlquiler + ", fechaDevolucion=" + fechaDevolucion + ", posicionAmarre=" + posicionAmarre + ", barco=" + barco + '}';
    }


}
