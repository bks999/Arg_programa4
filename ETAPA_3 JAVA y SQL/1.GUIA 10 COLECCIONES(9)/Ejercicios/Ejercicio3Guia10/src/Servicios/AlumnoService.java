/*
Crear una clase llamada Alumno que mantenga información sobre las notas de distintos
alumnos. La clase Alumno tendrá como atributos, su nombre y una lista de tipo Integer
con sus 3 notas.
En el servicio de Alumno deberemos tener un bucle que crea un objeto Alumno. Se pide
toda la información al usuario y ese Alumno se guarda en una lista de tipo Alumno y se le
pregunta al usuario si quiere crear otro Alumno o no.
Después de ese bucle tendremos el siguiente método en el servicio de Alumno:
Método notaFinal(): El usuario ingresa el nombre del alumno que quiere calcular su nota
final y se lo busca en la lista de Alumnos. Si está en la lista, se llama al método. Dentro
del método se usará la lista notas para calcular el promedio final de alumno. Siendo este
promedio final, devuelto por el método y mostrado en el main.
 */
package Servicios;

import Entidad.Alumno;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class AlumnoService {

    Scanner sc = new Scanner(System.in).useDelimiter("\n");
    ArrayList<Alumno> listaAlumnos = new ArrayList();

    public void crearAlumno() {

        System.out.println("Ingrese el nombre del alumno");
        String nombre = sc.next();

        ArrayList<Integer> notas = new ArrayList();
        for (int i = 0; i < 3; i++) {
            System.out.println("Ingrese la nota " + (i + 1));
            int nota = sc.nextInt();
            notas.add(nota);
        }
        Alumno alumno = new Alumno(nombre, notas);
        listaAlumnos.add(alumno);

    }

    public void cargarLista() {
        String respuesta;
        do {
            crearAlumno();
            do {
                System.out.println("Deseas sumar mas alumnos a la lista?(si/no)");
                respuesta = sc.next();
                if (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si")) {
                    System.out.println("Error de respuesta...");
                }
            } while (!respuesta.equalsIgnoreCase("no") && !respuesta.equalsIgnoreCase("si"));
        } while (!respuesta.equalsIgnoreCase("no"));
    }

    public void notaFinal(String nombreAlumno) {
        for (Alumno alumnos : listaAlumnos) {
            if (alumnos.getNombre().equalsIgnoreCase(nombreAlumno)) {
                ArrayList<Integer> notas = alumnos.getNotas();
                int suma = 0;
                for (Integer nota : notas) {
                    suma += nota;
                }
                double promedio = suma / notas.size();
                System.out.println("La nota final de " + alumnos.getNombre() + " es: " + promedio);
                break;
            } else {
                System.out.println("No se ha encontrado el nombre en la lista");
            }
        }
    }
}
