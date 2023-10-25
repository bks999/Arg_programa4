/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Persona {
    public String nombre,apellido;
    public int edad;
    public static Scanner leer = new Scanner(System.in);
    public Persona() {
        
    }
    public Persona(String nombre) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }
    
    public void cargarDatos() {
        System.out.println("Ingrese el nombre");
        nombre = leer.nextLine();
        System.out.println("Ingrese el apellido");
        apellido = leer.nextLine();
        System.out.println("Ingrese la edad");
        edad= leer.nextInt();
    }
    
}

/*import java.util.Scanner;


public class Operacion {
    private double numero1;
    private double numero2;

    // Constructor con todos los atributos pasados por parámetro
    public Operacion(double numero1, double numero2) {
        this.numero1 = numero1;
        this.numero2 = numero2;
    }

    // Constructor sin parámetros
    public Operacion() {}

    // Métodos get y set para los atributos numero1 y numero2
    public double getNumero1() {
        return numero1;
    }

    public void setNumero1(double numero1) {
        this.numero1 = numero1;
    }

    public double getNumero2() {
        return numero2;
    }

    public void setNumero2(double numero2) {
        this.numero2 = numero2;
    }

    // Método para pedir al usuario los dos números y guardarlos en los atributos del objeto
    public void crearOperacion() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese el primer número: ");
        numero1 = scanner.nextDouble();
        System.out.print("Ingrese el segundo número: ");
        numero2 = scanner.nextDouble();
    }

    // Método para sumar los números
    public double sumar() {
        return numero1 + numero2;
    }

    // Método para restar los números
    public double restar() {
        return numero1 - numero2;
    }

    // Método para multiplicar los números
    public double multiplicar() {
        if (numero1 == 0 || numero2 == 0) {
            System.out.println("No se puede multiplicar por cero.");
            return 0;
        }
        return numero1 * numero2;
    }

    // Método para dividir los números
    public double dividir() {
        if (numero2 == 0) {
            System.out.println("No se puede dividir por cero.");
            return 0;
        }
        return numero1 / numero2;
    }
}


public static void main(String[] args) {
        // TODO code application logic here
        Operacion operacion1 = new Operacion(); // Crea un objeto sin parámetros
        operacion1.crearOperacion();
        System.out.println("La suma de los números es: " + operacion1.sumar());
        System.out.println("La resta de los números es: " + operacion1.restar());
        System.out.println("La multiplicación de los números es: " + operacion1.multiplicar());
        System.out.println("La división de los números es: " + operacion1.dividir());
        
    }
}
*/