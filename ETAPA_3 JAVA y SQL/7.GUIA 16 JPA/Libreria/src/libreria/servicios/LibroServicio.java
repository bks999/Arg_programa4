/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package libreria.servicios;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import libreria.entidades.Autor;
import libreria.entidades.Editorial;
import libreria.entidades.Libro;

/**
 *
 * @author Sol
 */
public class LibroServicio extends DAO<Libro> {

    private static Scanner sc = new Scanner(System.in).useDelimiter("\n");
    private AutorService autorServ = new AutorService();
    private EditorialServicio editServ = new EditorialServicio();

    @Override
    protected void guardar(Libro libro) {
        super.guardar(libro);
    }

    public void crearLibro() {
        try {
            Libro libro = new Libro();
            libro.setAlta(Boolean.TRUE);
            System.out.println("Ingrese el titulo del libro");
            String titulo = sc.next();
            libro.setTitulo(titulo);
            System.out.println("Ingrese el anio de publicacion");
            Integer anio = sc.nextInt();
            libro.setAnio(anio);
            System.out.println("Ingrese la cantidad de ejemplares prestados");
            Integer ejPrestados = sc.nextInt();
            libro.setEjemplaresPrestados(ejPrestados);
            System.out.println("Ingrese la cantidad de ejemplares restantes");
            Integer ejRestantes = sc.nextInt();
            libro.setEjemplaresRestantes(ejRestantes);
            libro.setEjemplares(ejPrestados + ejRestantes);
            System.out.println("Ingrese el nombre del autor");
            String nombre = sc.next();
            try {
                Autor autor = autorServ.consultarAutorPorNombre(nombre);
                if (autor == null) {
                    System.out.println("Has ingresado un nuevo AUTOR. Se agregara a la tabla");
                    autor = autorServ.crearAutorOtro(nombre);
                    libro.setAutor(autor);
                } else {
                    libro.setAutor(autor);
                }
            } catch (Exception ex) {
                System.out.println("Error al setear autor");
                Autor autorError = new Autor("Desconocido", Boolean.FALSE);
                libro.setAutor(autorError);
            }
            System.out.println("Ingrese la editorial");
            String editorial = sc.next();
            try {
                Editorial edit = editServ.consultarEditorialPorNombre(editorial);
                if (edit == null) {
                    System.out.println("Has ingresado una nueva Editorial. Se agregara a la tabla");
                    Editorial editOtro = editServ.crearEditorialOtro(editorial);
                    libro.setEditorial(editOtro);
                } else {
                    libro.setEditorial(edit);
                }
            } catch (Exception ex) {
                System.out.println("Error al setear editorial");
                Editorial editError = new Editorial("Desconocido", Boolean.FALSE);
                libro.setEditorial(editError);
            }

            guardar(libro);
        } catch (Exception ex) {
            System.out.println("Ha ocurrido un error, vuelve a crear el libro");
            crearLibro();
        }
    }

    public Libro consultarLibroPorIsbn(Long isbn) {
        conectar();
        Libro libro = em.find(Libro.class, isbn);
        desconectar();
        return libro;
    }

    public Libro consultarLibroPorTitulo(String titulo) {
        conectar();
        Libro libro = (Libro) em.createQuery("SELECT l FROM Libro l WHERE l.titulo LIKE :titulo").setParameter("titulo", titulo).getSingleResult();
        desconectar();
        return libro;
    }

    public List<Libro> consultarLibroPorNombreAutor(String nombre) {
        List<Libro> listaLibros = null;
        conectar();
        Autor autor = autorServ.consultarAutorPorNombre(nombre);
        if (autor != null) {
            listaLibros = (List<Libro>) em.createQuery("SELECT l FROM Libro l WHERE l.autor.nombre LIKE :autor").setParameter("autor", nombre).getResultList();
        } else {
            System.out.println("No se ha hallado el autor");
        }
        desconectar();
        return listaLibros;
    }

    public List<Libro> consultarLibroPorEditorial(String nombre) {
        List<Libro> listaLibros = null;
        conectar();
        Editorial ed = editServ.consultarEditorialPorNombre(nombre);

        if (ed != null) {
            listaLibros = (List<Libro>) em.createQuery("SELECT l FROM Libro l WHERE l.editorial.nombre LIKE :editorial").setParameter("editorial", nombre).getResultList();
        } else {
            System.out.println("No se ha hallado la editorial");
        }
        desconectar();
        return listaLibros;
    }

    public void mostrarTabla() {
        conectar();
        List<Libro> tabla = em.createQuery("SELECT a FROM Libro a").getResultList();
        System.out.println(tabla.toString());
        desconectar();
    }

    public void darAltaBajaLibro(Libro libro) {
        System.out.println("Seleccionar una opcion"
                + "1 - ALTA"
                + "2- BAJA");
        int opcion = sc.nextInt();
        while (opcion != 1 || opcion != 2) {
            switch (opcion) {
                case 1:
                    if (!libro.getAlta()) {
                        libro.setAlta(Boolean.TRUE);
                        editar(libro);
                    }
                    break;
                case 2:
                    if (libro.getAlta()) {
                        libro.setAlta(Boolean.FALSE);
                        editar(libro);
                    }
                    break;
                default:
                    System.out.println("opcion erronea, vuelva a intentarlo");
                    break;
            }
        }
    }

    public void modificarLibro(String columna, Long isbn) {
        isbn = listaIsbn(isbn);
        Libro libro = null;
        libro = consultarLibroPorIsbn(isbn);
        if (columna.equalsIgnoreCase("Titulo")) {
            System.out.println("Ingrese el nuevo titulo");
            String nuevoTitulo = sc.next();
            libro.setTitulo(nuevoTitulo);
            editar(libro);
        }
        if (columna.equalsIgnoreCase("Autor")) {
            Integer idAutor = 0;
            do {
                System.out.println("Seleccionar el nuevo autor por su id");
                autorServ.mostrarTabla();
                System.out.print(">>");
                idAutor = sc.nextInt();
                idAutor = autorServ.listaId(idAutor);  //Validacion
            } while (idAutor == 0);
            if (idAutor != 0) {
                Autor autor = autorServ.consultaAutorPorId(idAutor);
                libro.setAutor(autor);
            } else {
                System.out.println("No se pudo realizar la modificacion");
            }
        }
        if (columna.equalsIgnoreCase("Editorial")) {
            Integer idEditorial = 0;
            do {
                System.out.println("Seleccionar la nueva editorial por su id");
                editServ.mostrarTabla();
                System.out.print(">>");
                idEditorial = sc.nextInt();
                idEditorial = editServ.listaId(idEditorial);  //Validacion
            } while (idEditorial == 0);
            if (idEditorial != 0) {
                Editorial editorial = editServ.consultaEditorialPorId(idEditorial);
                libro.setEditorial(editorial);
            } else {
                System.out.println("No se pudo realizar la modificacion");
            }
        }
        if (columna.equalsIgnoreCase("alta")) {
            darAltaBajaLibro(libro);
        }
    }

    public String listaColumnas(String columna) {
        List<String> lista = Arrays.asList("titulo", "autor", "editorial", "alta");
        if (lista.contains(columna)) {
            return columna;
        } else {
            columna = null;
            return columna;
        }
    }

    public Long listaIsbn(Long isbn) {
        conectar();
        List<Long> lista = em.createQuery("SELECT a.isbn FROM Libro a").getResultList();
        if (lista.contains(isbn)) {
            return isbn;
        } else {
            isbn = null;
            return isbn;
        }
    }

    @Override
    public void eliminar(Libro libro) {
        super.eliminar(libro);
    }

    @Override
    protected void editar(Libro libro) {
        super.editar(libro);
    }

}
