/*
 Recorrer un vector de N enteros contabilizando cuántos números son de 1 dígito, 
cuántos de 2 dígitos, etcétera (hasta 5 dígitos).
 */
package EjercicioGuia;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Ejercicio3 {

    public static Scanner leer = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Ingrese el tamanio del vector");
        int n = leer.nextInt();
        int[] vector = new int[n];
        String convert;
        int contaUnDig = 0, contaDosDig = 0, contaTresDig = 0, contaCuatroDig = 0, contaCincoDig = 0, contaMasDig = 0;
        for (int i = 0; i < n; i++) {
            vector[i] = (int) (Math.random()*(100000-1)+1);
            convert = String.valueOf(vector[i]);
            switch (convert.length()) {
                case 1:
                    contaUnDig++;
                    break;
                case 2:
                    contaDosDig++;
                    break;
                case 3:
                    contaTresDig++;
                case 4:
                    contaCuatroDig++;
                    break;
                case 5:
                    contaCincoDig++;
                    break;
                default:
                    contaMasDig++;
            }
        }
        System.out.println("Cantidad de numeros con 1 digito: " + contaUnDig);
        System.out.println("Cantidad de numeros con 2 digitos: " + contaDosDig);
        System.out.println("Cantidad de numeros con 3 digitos: " + contaTresDig);
        System.out.println("Cantidad de numeros con 4 digitos: " + contaCuatroDig);
        System.out.println("Cantidad de numeros con 5 digitos: " + contaCincoDig);
        System.out.println("Cantidad de numeros con mas de 5 digitos: " + contaMasDig);
    }

}
/*int number1 = 12223;
      
        String number = String.valueOf(number1);

        char[] digits1 = number.toCharArray();

        for(int i = 0; i < digits1.length; i++) {
            System.out.println(digits1[i]);*/

/* System.out.print("Ingrese el tamaño del arreglo: ");
        int tamanio = ingreso.nextInt();
        String convertir;
        int contaUnDig = 0, contaDosDig = 0, contaTresDig = 0, contaCuatroDig = 0, contaCincoDig = 0;
        int[] vector = new int[tamanio];
        for(int i=0;i<tamanio;i++){
            System.out.println("Ingrese un numero: ");
            vector[i] = ingreso.nextInt();
            convertir = String.valueOf(vector[i]);
            switch(convertir.length()){
                case 1:
                    contaUnDig++;
                    break;
                case 2:
                    contaDosDig++;
                    break;
                case 3:
                    contaTresDig++;
                    break;
                case 4:
                    contaCuatroDig++;
                    break;
                case 5:
                    contaCincoDig++;
                    break;
                default:
                    System.out.println("El numero es mayor a 5 digitos " + vector[i]);
            }
        }
         System.out.println("un digito:" + contaUnDig);
         System.out.println("dos digito:" + contaDosDig);
         System.out.println("tres digito:" + contaTresDig);
         System.out.println("Cuatro digito:" + contaCuatroDig);
         System.out.println("Cinco digito:" + contaCincoDig);
  
    }
} */
