package EjerciciosGuia3;


import java.util.Scanner;

/*
Realizar un programa que pida dos números enteros positivos por teclado y 
muestre por pantalla el siguiente menú:El usuario deberá elegir una opción y el 
programa deberá mostrar el resultado por pantalla y luego volver al menú. El
programa deberá ejecutarse hasta que se elija la opción 5. Tener en cuenta que,
si el usuario selecciona la opción 5, en vez de salir del programa directamente, 
se debe mostrar el siguiente mensaje de confirmación: ¿Está seguro que desea
salir del programa (S/N)? Si el usuario selecciona el carácter ‘S’ se sale del 
programa, caso contrario se vuelve a mostrar el menú.

 */

/**
 *
 * @author Sol
 */
public class Ejercicio6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leerNum = new Scanner (System.in);
        System.out.println("Ingrese dos numeros positivos");
        System.out.println("Primer numero:");
        int num1 = leerNum.nextInt();
        while (num1<1) {
            System.out.println("Error, ingrese un numero positivo");
            num1 = leerNum.nextInt();
        }
        
        System.out.println("Segundo numero:");
        int num2 = leerNum.nextInt();
        while (num2<1) {
            System.out.println("Error, ingrese un numero positivo");
            num2 = leerNum.nextInt();
        }

        Scanner leerLetra = new Scanner (System.in);
        String respuesta = "n";
        do {
        System.out.println("=======================================");
        System.out.println("=================MENU==================");
        System.out.println("1 - SUMAR");
        System.out.println("2 - RESTAR");
        System.out.println("3 - MULTIPLICAR");
        System.out.println("4 - DIVIDIR");
        System.out.println("5 - SALIR");
        System.out.println("=======================================");
        System.out.println("Elija una opcion:");
        System.out.println("=======================================");
        int option = leerNum.nextInt();
        System.out.println("=======================================");
        switch (option) {
            case 1:
                System.out.println(num1 + num2);
                continue;
            case 2:
                System.out.println(num1 - num2);
                continue;
            case 3:
                System.out.println(num1 * num2);
                continue;
            case 4:
                System.out.println(num1 / num2);
                continue;
            case 5:
                System.out.println("¿Está seguro que desea salir del programa (S/N)?");
                respuesta = leerLetra.next();
                respuesta = respuesta.toLowerCase();
                if (respuesta.equals("s")) {
                    break;
        }               
    }
    }while(respuesta.equalsIgnoreCase("n"));
    
}
}
