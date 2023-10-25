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
public class EmpleadoApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner insert = new Scanner(System.in);
        Empleado worker = new Empleado ();
        
        System.out.println("Ingrese su nombre");
        worker.setNombre(insert.next());
        System.out.println("Ingrese su edad");
        worker.setEdad(insert.nextInt());
        
        worker.calcular_aumento();
    }
    
}
