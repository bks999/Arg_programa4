/*
Crea una clase "Empleado" que tenga atributos como "nombre", "edad" y "salario". Luego, crea un método
"calcular_aumento" que calcule el aumento salarial de un empleado en función de su edad y salario actual. 
El aumento salarial debe ser del 10% si el empleado tiene más de 30 años o del 5% si tiene menos de 30 años.
 */
package empleadoapp;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Empleado {

    private String nombre;
    private int edad;
    private double salario;

    public Empleado(String nombre, int edad, double salario) {
        this.nombre = nombre;
        this.edad = edad;
        this.salario = salario;
    }

    public Empleado() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public void calcular_aumento() {
        Scanner insert = new Scanner(System.in);
        System.out.println("Ingresar su salario actual");
        double salarioActual = insert.nextDouble();
        if (this.edad>30) {
            this.salario=salarioActual * 110/100;
            System.out.println("El aumento salarial es del 10% ($" + (this.salario-salarioActual) + "). Salario total= $" + this.salario + ".");
        }else {
            this.salario=salarioActual * 105/100;
            System.out.println("El aumento salarial es del 5% ($" + (this.salario-salarioActual) + "). Salario total= $" + this.salario + ".");
        }
    }
}
