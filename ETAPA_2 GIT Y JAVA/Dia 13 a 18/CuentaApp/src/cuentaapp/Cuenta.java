/*
Crea una clase "Cuenta" que tenga atributos como "saldo" y "titular". Luego, crea un método "retirar_dinero" 
que permita retirar una cantidad de dinero del saldo de la cuenta. Asegúrate de que el saldo nunca sea 
negativo después de realizar una transacción de retiro.

 */
package cuentaapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Cuenta {

    public double saldo;
    public String titular;
    Scanner insert = new Scanner(System.in);

    public Cuenta(double saldo, String titular) {
        this.saldo = saldo;
        this.titular = titular;
    }

    public Cuenta() {
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public void retirar_dinero() {
        double dineroRetiro;
        int cont = 0;
        System.out.println("Cuanto dinero desea retirar?");
        do {
            dineroRetiro = insert.nextDouble();
            if (dineroRetiro == 0 && cont > 0) {
                System.out.println("FIN DE OPERACION");
            }

            if (this.saldo - dineroRetiro < 0) {
                System.out.println("No se puede retirar dinero. Saldo insuficiente");
                System.out.println("Ingrese nuevamente el valor a retirar o escribir 0 para finalizar");
                cont++;
            } else if (dineroRetiro > 0) {
                System.out.println("Se han retirado " + dineroRetiro + " pesos exitosamente. Su saldo actual es: " + (this.saldo - dineroRetiro) + " pesos.");
            }

        } while ((this.saldo - dineroRetiro) < 0 && dineroRetiro != 0);
    }
}
