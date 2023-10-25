/*
Siguiendo el ejercicio anterior, en el main vamos a crear un ArrayList de Electrodomésticos
para guardar 4 electrodomésticos, ya sean lavadoras o televisores, con valores ya asignados.
Luego, recorrer este array y ejecutar el método precioFinal() en cada electrodoméstico. Se
deberá también mostrar el precio de cada tipo de objeto, es decir, el precio de todos los
televisores y el de las lavadoras. Una vez hecho eso, también deberemos mostrar, la suma del
precio de todos los Electrodomésticos. Por ejemplo, si tenemos una lavadora con un precio de
2000 y un televisor de 5000, el resultado final será de 7000 (2000+5000) para
electrodomésticos, 2000 para lavadora y 5000 para televisor.
 */
package guia12ejercicio3;

import Entidades.Electrodomestico;
import Entidades.Lavadora;
import Entidades.Televisor;
import java.util.ArrayList;

/**
 *
 * @author Sol
 */
public class Guia12Ejercicio3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Electrodomestico> listaElectro = new ArrayList<>();
        Lavadora lavadora1 = new Lavadora(50, 50, "gris", 'b', 50);
        Lavadora lavadora2 = new Lavadora(60, 1000, "blanco", 'a', 60);
        Televisor televisor1 = new Televisor(80, true, 1000, "negro", 'c', 80);
        Televisor televisor2 = new Televisor(100, false, 1000, "gris", 'd', 100);

//       private static void crearElectrodomesticos(List<Electrodomestico> arrayElectro){
//        String[] colores={"BLANCO", "NEGRO", "ROJO", "AZUL", "GRIS"};
//        char[] consumos={'A','B','C','D','E','F'};
//        for (int i = 0; i < 4; i++) {
//            if (Math.round(Math.random())==1) {
//                arrayElectro.add(new Lavadora(Math.random()*40, Math.random()*10000, 
//                        colores[(int)Math.random()*colores.length], 
//                        consumos[(int)Math.random()*consumos.length], Math.random()*95));
//            }else{
//                arrayElectro.add(new Televisor(Math.random()*75,Math.round(Math.random())==1,
//                        Math.random()*15000,colores[(int) (Math.random() * colores.length - 1)], 
//                        consumos[(int) (Math.random() * consumos.length - 1)], Math.random()*95));
//            }
//        }
//    }
        listaElectro.add(lavadora1);
        listaElectro.add(lavadora2);
        listaElectro.add(televisor1);
        listaElectro.add(televisor2);
        double precioTotal = 0;
        for (Electrodomestico electrodomestico : listaElectro) {
            if (electrodomestico instanceof Lavadora) {
                Lavadora l = (Lavadora) electrodomestico;
                double precioL = l.precioFinal();
                System.out.println(precioL);
                precioTotal+= precioL;
            }
            if (electrodomestico instanceof Televisor) {
                Televisor t = (Televisor) electrodomestico;
                double precioT = t.precioFinal();
                System.out.println(precioT);
                precioTotal+= precioT;                
            }
        }
        System.out.println("El precio total es $" + precioTotal);
    }
}
