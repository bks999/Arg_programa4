/*
Definir una Clase que contenga algún tipo de dato de tipo array y agregue el código para
generar y capturar una excepción ArrayIndexOutOfBoundsException (índice de arreglo fuera
de rango).
 */
package guia13ejercicio2;

/**
 *
 * @author Sol
 */
public class Guia13Ejercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayClass array = new ArrayClass();
        try {
            array.llenarMostrarArray();
        }catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Fuera de rango");
        }
    }
    
}

//DE LUCIANO PONCE
//public static void main(String[] args) {
//        ArrayClass ac = new ArrayClass();
//        try {
//            ac.llenar();
//        } catch (ArrayIndexOutOfBoundsException e) {
//            System.out.println("fuera de Rango");
//            try{
//               ac.llenar2(); 
//            }catch(ArrayIndexOutOfBoundsException r){
//                System.out.println("mensaje");
//                try{
//               ac.llenar2(); 
//            }catch(ArrayIndexOutOfBoundsException u){
//                System.out.println("mensaje 2");
//            }
//            }
//            
//        }
//
//    }
//
//}
//DE ESTEBAN QUEREILHAC
//public static void main(String[] args) {        
//        Integer[]lista1=new Integer[3];
//        Integer[]lista2=new Integer[3];
//        try{
//            for (int i = 0; i < 3; i++) {
//                lista1[i]=i+1;
//                System.out.print(lista1[i]);
//            }System.out.println("");
//            
//            for (int i = 0; i < 10; i++) {
//                lista2[i]=i*2;
//                System.out.print(lista2[i]);
//            }
//        } catch(ArrayIndexOutOfBoundsException error){
//            System.out.println("\ntamanio incorrecto\n tipo de error: "+error.getMessage());
//        } finally {
//            System.out.println("finalizando programa");
//        }
//    }