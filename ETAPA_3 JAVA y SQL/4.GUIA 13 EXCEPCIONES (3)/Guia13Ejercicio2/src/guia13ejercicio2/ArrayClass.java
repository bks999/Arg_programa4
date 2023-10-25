/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package guia13ejercicio2;

/**
 *
 * @author Sol
 */
public class ArrayClass {
    private int [] array = new int[5];

    public ArrayClass() {
    }

    public int[] getArray() {
        return array;
    }

    public void setArray(int[] array) {
        this.array = array;
    }
 
    public void llenarMostrarArray() {
       
        for (int i = 0; i < array.length; i++) {
           array[i] = (int) (Math.random() * 10);
            System.out.println(array[i]);
        }
    }
}
//(de Luciano Ponce)
//public class ArrayClass {
//
//    private int[] vector = new int[6];
//    Random rand = new Random();
//   
//    public void llenar() {
//        for (int i = 0; i < 10; i++) {
//            vector[i] = rand.nextInt(10);
//        }
//    }
//    public void llenar2() {
//        for (int i = 0; i < 8; i++) {
//            vector[i] = rand.nextInt(10);
//            System.out.println(vector[i]);
//        }
//        System.out.println("Llenado Correcto");
//    }