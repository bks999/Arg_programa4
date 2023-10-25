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

/**
 *
 * @author Sol
 */
public class CodigoPostal {
    private Integer codigo;
    private String ciudad;

    public CodigoPostal() {
    }

    public CodigoPostal(Integer codigo, String ciudad) {
        this.codigo = codigo;
        this.ciudad = ciudad;
    }

    @Override
    public String toString() {
        return "CodigoPostal{" + "codigo=" + codigo + ", ciudad=" + ciudad + '}';
    }
    
}
