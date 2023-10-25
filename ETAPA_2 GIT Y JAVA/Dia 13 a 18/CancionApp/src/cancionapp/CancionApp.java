/*
Desarrollar una clase Cancion con los siguientes atributos: título y autor. Se deberá́ definir además dos 
constructores: uno vacío que inicializa el título y el autor a cadenas vacías y otro que reciba como parámetros 
el título y el autor de la canción. Se deberán además definir los métodos getters y setters correspondientes.

 */
package cancionapp;

/**
 *
 * @author Sol
 */
public class CancionApp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Cancion c1 = new Cancion ();
        Cancion c2 = new Cancion ("La vaca lola", "anonimo");
        c1.setAutor("Bonjovi");
        c1.setTitulo("Its my life");
        
        System.out.println("Cancion 1: Titulo - " + c1.titulo + ", autor - " + c1.autor);
        System.out.println("Cancion 2: Titulo - " + c2.titulo + ", autor - " + c2.autor);
        System.out.println(c2.toString()); 
        System.out.println(c1.toString());
    }
    
}
