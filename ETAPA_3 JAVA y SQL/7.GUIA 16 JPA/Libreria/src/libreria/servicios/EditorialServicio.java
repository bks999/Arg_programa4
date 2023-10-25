/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package libreria.servicios;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import libreria.entidades.Editorial;

/**
 *
 * @author Sol
 */
public class EditorialServicio extends DAO<Editorial> {

    private static Scanner sc = new Scanner(System.in).useDelimiter("\n");

    @Override
    protected void guardar(Editorial e) {
        super.guardar(e);
    }

    public void crearEditorial() {
        try {
            Editorial e = new Editorial();
            e.setAlta(Boolean.TRUE);
            System.out.println("Ingrese nombre de la editorial");
            String nombre = sc.next();
            e.setNombre(nombre);
            guardar(e);
        } catch (Exception ex) {
            System.out.println("Has ingresado un nombre duplicado, vuelve a ingresarlo");
            crearEditorial();
        }
    }

    public Editorial crearEditorialOtro(String nombre) {
        Editorial e = new Editorial();
        try {
            e.setAlta(Boolean.TRUE);
            e.setNombre(nombre);
            guardar(e);
        } catch (Exception ex) {
            System.out.println("Has ingresado un nombre duplicado, vuelve a ingresarlo");
            crearEditorial();
        }
        return e;
    }

    public Editorial consultaEditorialPorId(Integer id) {
        conectar();
        Editorial e = em.find(Editorial.class, id);
        desconectar();
        return e;
    }

    public Editorial consultarEditorialPorNombre(String nombre) {
        try {
            conectar();
            Editorial e = (Editorial) em.createQuery("SELECT e FROM Editorial e WHERE e.nombre LIKE :nombre").setParameter("nombre", nombre).getSingleResult();
            desconectar();
            return e;
        } catch (Exception ex) {
            Editorial e = null;
            desconectar();
            return e;
        }
    }

    public void mostrarTabla() {
        conectar();
        List<Editorial> tabla = em.createQuery("SELECT e FROM Editorial e").getResultList();
        System.out.println(tabla.toString());
        desconectar();
    }

    public Integer listaId(Integer id) {
        conectar();
        List<Integer> lista = em.createQuery("SELECT a.id FROM Editorial a").getResultList();
        if (lista.contains(id)) {
            return id;
        } else {
            id = 0;
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

    public void darAltaBajaEditorial(Editorial edi) {
        System.out.println("Seleccionar una opcion"
                + "1 - ALTA"
                + "2- BAJA");
        int opcion = sc.nextInt();
        while (opcion != 1 || opcion != 2) {
            switch (opcion) {
                case 1:
                    if (!edi.getAlta()) {
                        edi.setAlta(Boolean.TRUE);
                        editar(edi);
                    }
                    break;
                case 2:
                    if (edi.getAlta()) {
                        edi.setAlta(Boolean.FALSE);
                        editar(edi);
                    }
                    break;
                default:
                    System.out.println("opcion erronea, vuelva a intentarlo");
                    break;
            }
        }
    }

    public void modificarEditorial(String columna, Integer id) {
        Editorial editorial = null;
        editorial = consultaEditorialPorId(id);
        if (columna.equalsIgnoreCase("Nombre")) {
            System.out.println("Ingrese el nuevo nombre");
            String nuevoNombre = sc.next();
            editorial.setNombre(nuevoNombre);
            editar(editorial);
        }

        if (columna.equalsIgnoreCase("alta")) {
            darAltaBajaEditorial(editorial);
        }
    }

    public void modificarNombre() {
        try {
            System.out.println("Ingrese el nombre de la editorial a editar");
            String oldName = sc.next();
            System.out.println("Ingresar el nuevo nombre de editorial modificado");
            String newName = sc.next();
            Editorial edi = consultarEditorialPorNombre(oldName);
            if (edi != null) {
                edi.setNombre(newName);
                editar(edi);
            }
        } catch (Exception ex) {
            System.out.println("Error al modificar nombre de la editorial");
        }
    }

    @Override
    public void eliminar(Editorial e) {
        super.eliminar(e);
    }

    @Override
    protected void editar(Editorial e) {
        super.editar(e);
    }

}
