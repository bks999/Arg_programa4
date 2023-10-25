/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tienda.servicios;

import java.util.Scanner;
import tienda.entidades.Fabricante;
import tienda.persistencia.FabricanteDAO;

/**
 *
 * @author Sol
 */
public class fabricanteService {
    private FabricanteDAO fabDao;
    private final Scanner sc = new Scanner(System.in).useDelimiter("\n");

    public fabricanteService() {
        this.fabDao = new FabricanteDAO();
    }
    
    public void crearFabricante() throws Exception {
        try {
        Fabricante f = new Fabricante();
        System.out.println("Ingrese el nombre del nuevo fabricante");
        String nombre = sc.next();
      
        f.setNombre(nombre);
        if (f == null) {
                throw new Exception("Debe ingresar un fabricante");
            }
            
        fabDao.ingresarFabricante(f);
         } catch (Exception e) {
            throw e;
        }
    }
}
