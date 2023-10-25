/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MainAlumnos;

import Servicios.AlumnoService;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class AlumnosMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        AlumnoService x = new AlumnoService();
        x.cargarLista();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
        System.out.println("Ingrese el nombre del alumno que desee saber su nota final");
        String nombreAlumno = sc.next();
        x.notaFinal(nombreAlumno);
                
    }
    
}
