/*
Un profesor particular está dando cursos para grupos de cinco alumnos y necesita un programa para organizar
la información de cada curso. Para ello, crearemos una clase entidad llamada Curso, cuyos atributos 
serán: nombreCurso, cantidadHorasPorDia, cantidadDiasPorSemana, turno (mañana o tarde),  precioPorHora y
alumnos. Donde alumnos es un arreglo de tipo String de dimensión 5 (cinco), donde se alojarán los nombres
de cada alumno. A continuación, se implementarán los siguientes métodos:
Un constructor por defecto.
Un constructor con todos los atributos como parámetro.
Métodos getters y setters de cada atributo.

Método cargarAlumnos(): este método le permitirá al usuario ingresar los alumnos que asisten a las clases. 
Nosotros nos encargaremos de almacenar esta información en un arreglo e iterar con un bucle, solicitando
en cada repetición que se ingrese el nombre de cada alumno.

Método crearCurso(): el método crear curso, le pide los valores de los atributos al usuario y después se le 
asignan a sus respectivos atributos para llenar el objeto Curso. En este método invocamos al 
método cargarAlumnos() para asignarle valor al atributo alumnos

Método calcularGananciaSemanal(): este método se encarga de calcular la ganancia en una semana por curso.
Para ello, se deben multiplicar la cantidad de horas por día, el precio por hora, la cantidad de alumnos y la 
cantidad de días a la semana que se repite el encuentro.
 */
package Servicios;

import Entidades.Curso;
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CursoService {

    Scanner insert = new Scanner(System.in).useDelimiter("\n");
    Curso c1 = new Curso();

    public String[] cargarAlumnos() {
        String[] arr = new String[5];
        System.out.println("Ingrese los nombres de los alumnos que cursan");
        for (int i = 0; i < 5; i++) {
            arr[i] = insert.next();
        }
        return arr;
    }

    public void crearCurso() {
        System.out.println("Cargando curso...");

        System.out.println("Ingrese el nombre del curso");
        c1.setNombreCurso(insert.next());
        System.out.println("---------------------------------");
        System.out.println("Ingrese en que turno se dicta: mañana/tarde");
        String turno = "";
        do {
            turno = insert.next();
        } while (!(turno.equalsIgnoreCase("mañana") || turno.equalsIgnoreCase("tarde") || turno.equalsIgnoreCase("maniana")));
        c1.setTurno(turno);
        System.out.println("---------------------------------");
        System.out.println("Ingrese cuantos dias por semana es la cursada");
        c1.setCantidadDiasPorSemana(insert.nextInt());
        System.out.println("---------------------------------");
        System.out.println("Ingrese cuantas horas por dia dura la cursada");
        c1.setCantidadHorasPorDia(insert.nextDouble());
        System.out.println("---------------------------------");
        System.out.println("Ingrese el precio por horas");
        c1.setPrecioPorHora(insert.nextDouble());
        System.out.println("---------------------------------");
        c1.setAlumnos(cargarAlumnos());

    }

    public void calcularGananciaSemanal() {
        double ganancia = c1.getCantidadDiasPorSemana() * c1.getCantidadHorasPorDia() * c1.getPrecioPorHora() * c1.getAlumnos().length;
        System.out.println("La ganancia en una semana por curso es: " + ganancia);
    }

//    public void mostrar() {
//        String[] arra = c1.getAlumnos();
//        System.out.println(Arrays.toString(arra));
//        System.out.println(c1.getNombreCurso());
//    }
}
