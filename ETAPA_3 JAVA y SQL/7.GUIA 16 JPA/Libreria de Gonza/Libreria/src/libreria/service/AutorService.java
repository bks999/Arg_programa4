package libreria.service;

import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import libreria.entidades.Autor;
import libreria.persistencia.AutorDAO;

public class AutorService {

    private AutorDAO ad;
    Scanner leer = new Scanner(System.in, "ISO-8859-1").useDelimiter("\n");

    public AutorService() {
        this.ad = new AutorDAO();
    }

    public void crearAutor() {
        System.out.println("Ingrese el nombre del autor.");
        String nombre = leer.next();
        Autor au = new Autor(nombre, Boolean.TRUE);

        try {
            ad.guardar(au);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public void baja() {
        System.out.println("Desea dar alta o baja?");
        String rta = leer.nextLine();
        System.out.println("Ingrese ID del usuario.");
        Integer id = leer.nextInt();

        if (rta.equalsIgnoreCase("alta")) {
            try {
                ad.altaBaja(id, Boolean.TRUE);
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
            System.out.println("El autor fue dado de alta exitosamente.");

        } else {
            try {
                ad.altaBaja(id, Boolean.FALSE);
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
            System.out.println("El autor fue dado de baja exitosamente.");
        }

    }
    
    public void buscarNom(){
        System.out.println("Ingrese el nombre del autor.");
        String nom = leer.nextLine();
        try {
            Autor a =ad.autorNom(nom);
            System.out.println("El nombre del autor es: "+a.getNombre() );
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

}
