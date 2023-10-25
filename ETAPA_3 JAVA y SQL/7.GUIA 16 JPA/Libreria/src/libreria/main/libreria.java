package libreria.main;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import libreria.entidades.Autor;
import libreria.entidades.Libro;
import libreria.entidades.Editorial;
import libreria.servicios.AutorService;
import libreria.servicios.EditorialServicio;
import libreria.servicios.LibroServicio;

/**
 *
 * @author Sol
 */
public class libreria {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        AutorService autorServ = new AutorService();
        EditorialServicio editServ = new EditorialServicio();
        LibroServicio libroServ = new LibroServicio();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        List<String> listaOp1 = null;
        String op1 = "";
        List<Integer> listaOp2 = null;
        Integer op2 = 0;
        String resultado = "sigue";
        do {
            do { //bucle para error en op1
                System.out.println("* * * * * * * * * * * * * * * * * * * * * * * *");
                System.out.println("* * *            MENU LIBRERIA            * * *");
                System.out.println("* * * * * * * * * * * * * * * * * * * * * * * *");
                System.out.println("");
                System.out.println("-----------------------------------------------");
                System.out.println("|            SELECCIONE  TABLA                |");
                System.out.println("|---------------------------------------------|");
                System.out.println("| A - AUTOR                                   |");
                System.out.println("| E - EDITORIAL                               |");
                System.out.println("| L - LIBRO                                   |");
                System.out.println("-----------------------------------------------");
                System.out.print(">>");
                do {
                    try {
                        op1 = sc.next().toLowerCase();
                    } catch (Exception ex) {
                        System.out.println("Debes ingresar A, E o L. Vuelve a intentarlo");
                        op1 = null;
                    }
                } while (op1 == null);
                listaOp1 = Arrays.asList("a", "e", "l");
                if (!listaOp1.contains(op1.toLowerCase())) {
                    System.out.println("Error, vuelva a intentarlo");
                }
            } while (!listaOp1.contains(op1));

            do {
                System.out.println("");
                System.out.println("");
                System.out.println("--------------------------------------------------");
                System.out.println("|            SELECCIONE  FUNCION                 |");
                System.out.println("--------------------------------------------------");
                System.out.println("| 1 - CREAR                                       |");
                System.out.println("| 2 - BUSCAR                                      |");
                System.out.println("| 3 - MOSTRAR                                     |");
                System.out.println("| 4 - EDITAR                                      |");
                System.out.println("| 5 - ELIMINAR                                    |");
                System.out.println("---------------------------------------------------");
                System.out.println("| 6 - SALIR                                       |");
                System.out.println("---------------------------------------------------");
                System.out.print(">>");
                listaOp2 = Arrays.asList(1, 2, 3, 4, 5, 6);
                do {
                    try {
                        op2 = sc.nextInt();
                    } catch (Exception ex) {
                        System.out.println("Debes ingresar un numero, vuelve a intentarlo");
                        sc.next(); //soluciona que no se repita el catch infinitamente.
                        op2 = null;
                    }
                } while (op2 == null);
                if (!listaOp2.contains(op2)) {
                    System.out.println("Error, vuelva a intentarlo");
                }
            } while (!listaOp2.contains(op2));

            switch (op2) {
                //-----------------------------------------CREAR----------------------------------------------
                case 1:
                    switch (op1.toLowerCase()) {
                        case "a":
                            autorServ.crearAutor();
                            break;
                        case "e":
                            editServ.crearEditorial();
                            break;
                        case "l":
                            libroServ.crearLibro();
                            break;
                    }
                    break;
                //----------------------------------------BUSCAR--------------------------------------------
                case 2:
                    //---------------------------------------BUSCAR AUTOR------------------------------------------------
                    if (op1.equalsIgnoreCase("a")) {
                        System.out.println("");
                        Integer resp1 = 0;
                        do {
                            System.out.println("--------------------------------------");
                            System.out.println("|            SELECCIONE              |");
                            System.out.println("--------------------------------------");
                            System.out.println("| 1 - BUSCAR POR ID                  |");
                            System.out.println("| 2 - BUSCAR  POR NOMBRE             |");
                            System.out.println("--------------------------------------");
                            System.out.print(">>");
                            try {
                                resp1 = sc.nextInt();
                            } catch (Exception ex) {
                                System.out.println("Debes ingresar un numero, vuelve a intentarlo");
                                sc.next();
                            }
                            if (resp1 != 1 && resp1 != 2) {
                                System.out.println("No has ingresado 1 o 2");
                            }
                        } while (resp1 != 1 && resp1 != 2);
                        if (resp1 == 1) {
                            System.out.println("");
                            System.out.println("Ingrese el id a buscar");
                            Integer idAutor = sc.nextInt();
                            Autor a = autorServ.consultaAutorPorId(idAutor);
                            System.out.println(a.toString());
                        } else if (resp1 == 2) {
                            System.out.println("");
                            System.out.println("Ingrese el nombre a buscar");
                            String nombreAutor = sc.next();
                            Autor a = autorServ.consultarAutorPorNombre(nombreAutor);
                            System.out.println(a.toString());
                        }
                        //----------------------------------------BUSCAR EDITORIAL-----------------------------------------------
                    }
                    if (op1.equalsIgnoreCase("e")) {
                        System.out.println("");
                        Integer resp2 = 0;
                        do {
                            System.out.println("--------------------------------------");
                            System.out.println("|            SELECCIONE              |");
                            System.out.println("--------------------------------------");
                            System.out.println("| 1 - BUSCAR POR ID                  |");
                            System.out.println("| 2 - BUSCAR  POR NOMBRE             |");
                            System.out.println("--------------------------------------");
                            System.out.print(">>");
                            try {
                                resp2 = sc.nextInt();
                            } catch (Exception ex) {
                                System.out.println("Debes ingresar un numero, vuelve a intentarlo");
                                sc.next();
                            }
                            if (resp2 != 1 && resp2 != 2) {
                                System.out.println("No has ingresado 1 o 2");
                            }
                        } while (resp2 != 1 && resp2 != 2);
                        if (resp2 == 1) {
                            System.out.println("");
                            System.out.println("Ingrese el id a buscar");
                            Integer idEditorial = sc.nextInt();
                            Editorial ed = editServ.consultaEditorialPorId(idEditorial);
                            System.out.println(ed.toString());
                        } else if (resp2 == 2) {
                            System.out.println("");
                            System.out.println("Ingrese el nombre a buscar");
                            String nombreEditorial = sc.next();
                            Editorial ed = editServ.consultarEditorialPorNombre(nombreEditorial);
                            System.out.println(ed.toString());
                        }
                        //------------------------------------------BUSCAR LIBRO---------------------------------------------
                    }
                    if (op1.equalsIgnoreCase("l")) {
                        System.out.println("");
                        Integer resp3 = 0;
                        do {
                            System.out.println("------------------------------------------");
                            System.out.println("|                SELECCIONE              |");
                            System.out.println("------------------------------------------");
                            System.out.println("| 1 - BUSCAR POR ISBN              |");
                            System.out.println("| 2 - BUSCAR  POR TITULO        |");
                            System.out.println("| 3 - BUSCAR  POR AUTOR        |");
                            System.out.println("| 4 - BUSCAR  POR EDITORIAL  |");
                            System.out.println("------------------------------------------");
                            System.out.print(">>");
                            try {
                                resp3 = sc.nextInt();
                            } catch (Exception ex) {
                                System.out.println("Debes ingresar un numero, vuelve a intentarlo");
                                sc.next();
                            }
                            if (resp3 != 1 && resp3 != 2) {
                                System.out.println("Error, vuelva a intentarlo");
                            }
                        } while (resp3 == 0 && resp3 > 4);

                        Libro lib = null;
                        switch (resp3) {
                            case 1:
                                System.out.println("");
                                System.out.println("Ingrese el ISBN del libro a buscar");
                                long isbn = sc.nextLong();
                                lib = libroServ.consultarLibroPorIsbn(isbn);
                                System.out.println(lib.toString());
                                break;
                            case 2:
                                System.out.println("");
                                System.out.println("Ingrese el TITULO del libro a buscar");
                                String titulo = sc.next();
                                lib = libroServ.consultarLibroPorTitulo(titulo);
                                System.out.println(lib.toString());
                                break;
                            case 3:
                                System.out.println("");
                                System.out.println("Ingrese el nombre del autor del libro/s a buscar");
                                String autor = sc.next();
                                List<Libro> libros = libroServ.consultarLibroPorNombreAutor(autor);
                                System.out.println(libros.toString());
                                break;
                            case 4:
                                System.out.println("");
                                System.out.println("Ingrese la editorial del libro a buscar");
                                String editorial = sc.next();
                                List<Libro> libros1 = libroServ.consultarLibroPorEditorial(editorial);
                                System.out.println(libros1.toString());
                                break;
                        }
                    }
                    break;

                //-----------------------------------------MOSTRAR----------------------------------------------
                case 3:
                    switch (op1.toLowerCase()) {
                        case "a":
                            autorServ.mostrarTabla();
                            break;
                        case "e":
                            editServ.mostrarTabla();
                            break;
                        case "l":
                            libroServ.mostrarTabla();
                            break;
                    }
                    break;
                //-------------------------------------------EDITAR--------------------------------------------
                case 4:
                    switch (op1.toLowerCase()) {
                        case "a":
                            autorServ.mostrarTabla();
                            break;
                        case "e":
                            editServ.mostrarTabla();
                            break;
                        case "l":
                            libroServ.mostrarTabla();
                            break;
                    }
                    Long isbnEdit = null;
                    String columna = "";
                    Integer idEdit = 0;

                    if (op1.equalsIgnoreCase("l")) {

                        do {
                            System.out.println("Ingrese el ISBN del libro a modificar/editar");
                            isbnEdit = sc.nextLong();
                            isbnEdit = libroServ.listaIsbn(isbnEdit);
                            if (isbnEdit == null) {
                                System.out.println("ISBN erroneo, vuelva a ingresar");
                            }
                        } while (isbnEdit == null);

                        do {
                            System.out.println("Escriba la columna a modificar");
                            columna = sc.next();
                            columna = libroServ.listaColumnas(columna.toLowerCase());
                            if (columna == null) {
                                System.out.println("Columna erronea, vuelva a ingresar");
                            }
                        } while (columna == null);

                        libroServ.modificarLibro(columna, isbnEdit);
                        System.out.println(""
                                + "----------------TABLA EDITADA---------------");
                        libroServ.mostrarTabla();
                    } else {
                        do {
                            System.out.println("Ingrese el id");
                            idEdit = sc.nextInt();
                            idEdit = autorServ.listaId(idEdit);
                            if (idEdit == null) {
                                System.out.println("Id erroneo, vuelva a ingresar");
                            }
                        } while (idEdit == null);

                        do {
                            System.out.println("Escriba la columna a modificar");
                            columna = sc.next();
                            columna = autorServ.listaColumnas(columna); //Validacion ------ se puede usar el metodo listaColumnas() de autorServ o editServ por igual. Ambos tienen los mismos atributos
                            if (columna == null) {
                                System.out.println("Columna erronea, vuelva a ingresar");
                            }
                        } while (columna == null);

                        if (op1.equalsIgnoreCase("a")) {
                            autorServ.modificarAutor(columna, idEdit);
                            System.out.println(""
                                    + "----------------TABLA EDITADA---------------");
                            autorServ.mostrarTabla();
                        } else if (op1.equalsIgnoreCase("e")) {
                            editServ.modificarEditorial(columna, idEdit);
                            System.out.println(""
                                    + "----------------TABLA EDITADA---------------");
                            editServ.mostrarTabla();
                        }
                    }
                    break;
                //------------------------------------------ELIMINAR---------------------------------------------
                case 5:
                    switch (op1.toLowerCase()) {
                        case "a":
                            autorServ.mostrarTabla();
                            break;
                        case "e":
                            editServ.mostrarTabla();
                            break;
                        case "l":
                            libroServ.mostrarTabla();
                            break;
                    }
                    Long isbnDelete = null;
                    Integer idDelete = null;
                    Integer idDelete1 = null;
                    if (op1.equalsIgnoreCase("l")) {
                        do {
                            System.out.println("Ingrese el ISBN del libro a eliminar");
                            isbnDelete = sc.nextLong();
                            isbnDelete = libroServ.listaIsbn(isbnDelete);
                            if (isbnDelete == null) {
                                System.out.println("ISBN erroneo, vuelva a ingresar");
                            }
                        } while (isbnDelete == null);

                        Libro libro = libroServ.consultarLibroPorIsbn(isbnDelete);
                        libroServ.eliminar(libro);
                        System.out.println(""
                                + "----------------TABLA EDITADA---------------");
                        libroServ.mostrarTabla();
                    } else {
                        do {
                            System.out.println("Ingrese el id de la class a eliminar");
                            idDelete = sc.nextInt();
                            idDelete1 = idDelete;
                            idDelete = autorServ.listaId(idDelete);
                            idDelete1 = editServ.listaId(idDelete1);
                            if (idDelete == null && idDelete1 == null) {
                                System.out.println("Id erroneo, vuelva a ingresar");
                            }
                        } while (idDelete == null && idDelete1 == null);

                        if (op1.equalsIgnoreCase("a")) {
                            Autor autor = autorServ.consultaAutorPorId(idDelete);
                            autorServ.eliminar(autor);
                            System.out.println(""
                                    + "----------------TABLA EDITADA---------------");
                            autorServ.mostrarTabla();
                        } else if (op1.equalsIgnoreCase("e")) {
                            Editorial editorial = editServ.consultaEditorialPorId(idDelete1);
                            editServ.eliminar(editorial);
                            System.out.println(""
                                    + "----------------TABLA EDITADA---------------");
                            editServ.mostrarTabla();
                        }
                    }
                    break;
                //------------------------------------------SALIR---------------------------------------------
                case 6:
                    System.out.println("Desea finalizar el programa? [si/no]");
                    do {
                        try {
                            resultado = sc.next();
                        } catch (Exception ex) {
                            System.out.println("Debe ingresar con si/no, vuelva a intentarlo (1)");
                        }
                        if (resultado.equalsIgnoreCase("si")) {
                            System.out.println("FIN DE PROGRAMA");
                            break;
                        } else if (resultado.equalsIgnoreCase("no")) {
                            resultado = "sigue";
                        } else {
                            System.out.println("Debe responder con si/no, vuelva a intentarlo (2)");
                            resultado = "repite";
                        }
                    } while (resultado.equalsIgnoreCase("repite"));
            }
        } while (resultado.equalsIgnoreCase("sigue"));
    }
}
