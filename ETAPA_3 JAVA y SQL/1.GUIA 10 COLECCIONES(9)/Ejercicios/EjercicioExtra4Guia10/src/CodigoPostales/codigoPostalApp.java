/*
4. Almacena en un HashMap los códigos postales de 10 ciudades a elección de esta
página: https://mapanet.eu/index.htm. Nota: Poner el código postal sin la letra, solo el
numero.
• Pedirle al usuario que ingrese 10 códigos postales y sus ciudades.
• Muestra por pantalla los datos introducidos
• Pide un código postal y muestra la ciudad asociada si existe sino avisa al
usuario.
• Muestra por pantalla los datos
• Agregar una ciudad con su código postal correspondiente más al HashMap.
• Elimina 3 ciudades existentes dentro del HashMap
 */
package CodigoPostales;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Sol
 */
public class codigoPostalApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        Map<Integer, String> cps = new HashMap<Integer, String>();
        Integer[] postalCode = {1414, 1425, 1642, 2000, 4000, 4400, 5000, 5700, 8300, 9000};
        String[] cities = {"Ciudad Autónoma de Buenos Aires", "Palermo", "Beccar", "Rosario", "San Miguel de Tucumán", "Salta", "Córdoba", "Neuquén", "Bariloche", "Bahía Blanca"};
        for (int i = 0; i < cities.length; i++) {
            cps.put(postalCode[i], cities[i]);
        }
        
        for (Map.Entry<Integer, String> aux : cps.entrySet()) {
            System.out.println("Ciudad: " + aux.getKey() + "; codigo postal: " + aux.getValue());
        }
            
        }
    }


