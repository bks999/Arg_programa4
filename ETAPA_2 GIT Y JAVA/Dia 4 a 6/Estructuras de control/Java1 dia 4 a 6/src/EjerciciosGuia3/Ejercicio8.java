package EjerciciosGuia3;

import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Sol
 */
public class Ejercicio8 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        /* Dibujar un cuadrado de N elementos por lado utilizando el carácter 
“*”. Por ejemplo, si el cuadrado tiene 4 elementos por lado se deberá dibujar 
lo siguiente:
* * * *
*     *
*     *
* * * *
//DE OWEN RUIZ DIAZ */
        Scanner leer = new Scanner(System.in);
        System.out.println("ingrese el tamaño del cuadrado");
        int num;
        num = leer.nextInt();

        for (int i = 1; i <= num; i++) {
            for (int j = 1; j <= num; j++) {
                if ((i == 1) || (i == num) || (j == 1) || (j == num)) {
                    System.out.print("* ");
                } else {
                    System.out.print("  ");
                }
            }
            System.out.println("");
        }
    }
}

/*       Scanner leer = new Scanner(System.in);
        System.out.println("Ingrese de cuantos elementos es el cuadrado de *");
        int num = leer.nextInt();
        int cont = 1;
        for (int i = 1; i<= num; i++) {
            if (i<num) {
            System.out.print("* ");    
            }else {
                System.out.print("*");
                System.out.println("");
                cont++ ;
            }
        }
        do {
        for (int i = 1; i<= num; i++) {
            if (i==1) {
            System.out.print("* ");    
            }
            if ((i!=1) && (i!=num)){
                System.out.print("  ");       
            }
             if (i==num) {
                System.out.println("*");
                cont++;
            }
        }
        }while (cont<num);
        
        for (int i = 1; i<= num; i++) {
            if (i<num) {
            System.out.print("* ");    
            }else {
                System.out.print("*");
                System.out.println("");
            }
        }
       
 */
