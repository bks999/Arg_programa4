/*
Agregar la clase CuentaBancariaServicio en el paquete Servicios que contenga:
Método para crear cuenta pidiéndole los datos al usuario.

Método ingresar(double): recibe una cantidad de dinero a ingresar y se le sumará al saldo actual.

Método retirar(double): recibe una cantidad de dinero a retirar y se le restara al saldo actual.
Si la cuenta no tiene la cantidad de dinero a retirar se retirará el máximo posible hasta dejar la cuenta en 0.

Método extraccionRapida: le permitirá sacar solo un 20% de su saldo. Validar que el usuario no saque más del 20%.

Método consultarSaldo: permitirá consultar el saldo disponible en la cuenta.

Método consultarDatos: permitirá mostrar todos los datos de la cuenta.
 */
package Servicios;

import Entidades.CuentaBancaria;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CuentaBancariaServicio {

    Scanner insert = new Scanner(System.in);

    public void crearCuenta(CuentaBancaria cb) {
//          private int numeroCuenta;
//          private long dniCliente;
//          private double saldoActual;

        System.out.println("Ingrese su numero de cuenta");
        cb.setNumeroCuenta(insert.nextInt());

        System.out.println("Ingrese su numero de dni");
        cb.setDniCliente(insert.nextLong());

        cb.setSaldoActual(0);

    }

    public void ingresar(CuentaBancaria cb) {
        System.out.println("Saldo a ingresar");
        double saldoIngresado = insert.nextDouble();

        cb.setSaldoActual(cb.getSaldoActual() + saldoIngresado);
    }

    public void retirar(CuentaBancaria cb) {
        System.out.println("Saldo a retirar");
        double saldoRetirado = insert.nextDouble();
        if (cb.getSaldoActual() > saldoRetirado && cb.getSaldoActual() > 0) {
            cb.setSaldoActual(cb.getSaldoActual() - saldoRetirado);
            System.out.println("Se han retirado " + saldoRetirado + ". Saldo actual: " + cb.getSaldoActual());
        } else {
            System.out.println("Se han retirado " + cb.getSaldoActual() + ". Saldo actual: 0.");
            cb.setSaldoActual(0);
        }
    }

    public void extraccionRapida(CuentaBancaria cb) {
        System.out.println("Saldo a retirar por extraccion rapida");
        double saldoRetirado;
        do {
            saldoRetirado = insert.nextDouble();
            if (saldoRetirado > (cb.getSaldoActual() * 0.2)) {
                System.out.println("No se ha podido realizar la extraccion porque supera el 20% de su saldo actual. (Intente extraer un valor menor a " + (cb.getSaldoActual() * 0.2));
            } else {
                cb.setSaldoActual(cb.getSaldoActual() - saldoRetirado);
                System.out.println("Se han retirado " + saldoRetirado + ". Su saldo actual es " + cb.getSaldoActual());
                break;
            }
        } while (saldoRetirado > (cb.getSaldoActual() * 0.2));
    }

    public void consultarSaldo(CuentaBancaria cb) {
        System.out.println("Su saldo actual es: " + cb.getSaldoActual());
    }

    public void consultarDatos(CuentaBancaria cb) {
        System.out.println("Numero de cuenta: " + cb.getNumeroCuenta());
        System.out.println("Numero de DNI: " + cb.getDniCliente());
        System.out.println("Saldo actual: " + cb.getSaldoActual());
    }
}
