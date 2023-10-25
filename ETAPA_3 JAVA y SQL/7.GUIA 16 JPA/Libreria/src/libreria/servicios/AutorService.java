/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package libreria.servicios;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import libreria.entidades.Autor;

/**
 *
 * @author Sol
 */
public class AutorService extends DAO<Autor> {

    private static Scanner sc = new Scanner(System.in).useDelimiter("\n");

    @Override
    protected void guardar(Autor autor) {
        super.guardar(autor);
    }

    public void crearAutor() {
        try {
            Autor autor = new Autor();
            autor.setAlta(Boolean.TRUE);
            System.out.println("Ingrese nombre del autor");
            String nombre = sc.next();
            autor.setNombre(nombre);
            guardar(autor);
        } catch (Exception ex) {
            System.out.println("Has ingresado un nombre duplicado, vuelve a ingresarlo");
            crearAutor();
        }
    }

    public Autor crearAutorOtro(String nombre) {
        Autor autor = new Autor();
        try {
            autor.setAlta(Boolean.TRUE);
            autor.setNombre(nombre);
            guardar(autor);
        } catch (Exception ex) {
            System.out.println("Has ingresado un nombre duplicado, vuelve a ingresarlo");
            crearAutor();
        }
        return autor;

    }

    public Autor consultaAutorPorId(Integer id) {
        conectar();
        Autor autor = em.find(Autor.class, id);
        desconectar();
        return autor;
    }

    public Autor consultarAutorPorNombre(String nombre) {
        try {
            conectar();
            Autor autor = (Autor) em.createQuery("SELECT a FROM Autor a WHERE a.nombre LIKE :nombre").setParameter("nombre", nombre).getSingleResult();
            desconectar();
            return autor;
        } catch (Exception ex) {
            Autor autor = null;
            desconectar();
            return autor;
        }
    }

    public void mostrarTabla() {
        conectar();
        List<Autor> tabla = em.createQuery("SELECT a FROM Autor a").getResultList();
        System.out.println(tabla.toString());
        desconectar();
    }

    public Integer listaId(Integer id) {
        conectar();
        List<Integer> lista = em.createQuery("SELECT a.id FROM Autor a").getResultList();
        if (lista.contains(id)) {
            return id;
        } else {
            id = null;
            return id;
        }
    }

    public String listaColumnas(String columna) {
        List<String> lista = Arrays.asList("nombre", "alta");
        if (lista.contains(columna)) {
            return columna;
        } else {
            columna = null;
            return columna;
        }
    }

    public void darAltaBajaAutor(Autor autor) {

        System.out.println("Seleccionar una opcion"
                + "1 - ALTA"
                + "2- BAJA");
        int opcion = sc.nextInt();
        while (opcion != 1 || opcion != 2) {
            switch (opcion) {
                case 1:
                    if (!autor.getAlta()) {
                        autor.setAlta(Boolean.TRUE);
                        editar(autor);
                    }
                    break;
                case 2:
                    if (autor.getAlta()) {
                        autor.setAlta(Boolean.FALSE);
                        editar(autor);
                    }
                    break;
                default:
                    System.out.println("opcion erronea, vuelva a intentarlo");
                    break;
            }
        }
    }

    public void modificarAutor(String columna, Integer id) {
        Autor autor = null;
        autor = consultaAutorPorId(id);
        if (columna.equalsIgnoreCase("Nombre")) {
            System.out.println("Ingrese el nuevo nombre");
            String nuevoNombre = sc.next();
            autor.setNombre(nuevoNombre);
            editar(autor);
        }

        if (columna.equalsIgnoreCase("alta")) {
            darAltaBajaAutor(autor);
        }
    }

    @Override
    public void eliminar(Autor autor) {
        super.eliminar(autor);
    }

    @Override
    protected void editar(Autor autor) {
        super.editar(autor);
    }

}
