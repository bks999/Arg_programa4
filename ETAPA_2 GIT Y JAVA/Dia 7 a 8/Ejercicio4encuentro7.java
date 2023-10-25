/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicio4encuentro7;

import java.util.Scanner;

/**
 *
 * @author alumno
 */
public class Ejercicio4encuentro7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer=new Scanner(System.in);
        int num;
        System.out.println(" ingrese un numero");
        num=leer.nextInt();
        numeroprimo(num);
        if(numeroprimo(num)){
                System.out.println("el numero es primo: ");
            }else{
                System.out.println("el numero no es primo: ");
            }
       
    }
    public static boolean numeroprimo(int num){
          for(int i=2;i<(num/2+1);i++){
            
                if(num%i==0){
                    return false;
                }
            
            
        }
          return true;
    }
   }
  
