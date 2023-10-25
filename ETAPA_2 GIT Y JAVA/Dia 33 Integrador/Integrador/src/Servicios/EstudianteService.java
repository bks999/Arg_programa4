/*
crear un objeto de tipo Estudiante, sus atributos van a ser nombre y nota (representando la nota obtenida en el final). 
La escuela consta con tan solo 8 estudiantes, por lo que deberemos crear los 8 estudiantes con sus respectivas notas.
Una vez creado los estudiantes deberemos guardar los estudiantes en un arreglo de objetos tipo Estudiante,
usando ese arreglo tenemos que realizar las dos tareas que nos ha pedido la escuela.
Calcular y mostrar el promedio de notas de todo el curso
Retornar otro arreglo con los nombre de los alumnos que recibieron una nota mayor al promedio del curso
Por último, deberemos mostrar todos los estudiantes con una nota mayor al promedio.
Nota: para crear un vector de objetos la definición es la siguiente:
Objeto nombreVector[] = new Objeto[];
 */
package Servicios;

import Entidades.Estudiante;
import java.util.Arrays;

/**
 *
 * @author Sol
 */
public class EstudianteService {
Estudiante arrEst[];
    

    public Estudiante[] crearEst() {
         arrEst = new Estudiante[8];
        arrEst[0] = new Estudiante("Ariel", 7);
        arrEst[1] = new Estudiante("Barbara", 8);
        arrEst[2] = new Estudiante("Carlos", 6);
        arrEst[3] = new Estudiante("Denise", 9);
        arrEst[4] = new Estudiante("Elisa", 10);
        arrEst[5] = new Estudiante("Franco", 8);
        arrEst[6] = new Estudiante("Gaston", 7);
        arrEst[7] = new Estudiante("Hector", 9);
        return arrEst;
    }
    
    public double promedio() {
        int suma=0;
        for (int i=0;i<(arrEst.length); i++) {
            suma += arrEst[i].getNota();
        }
        double promedio = suma/arrEst.length;
        
        return promedio;
    }
    
    public String[] alumnosExcelentes() {
        double promedio = promedio();
        int cont = 0;
        String [] arrEstEstudiantes;
    for (Estudiante arrEst1 : arrEst) {
        if (promedio <= arrEst1.getNota()) {
            cont++;
        }
    }
       arrEstEstudiantes= new String [cont];
       int z=0;
    for (Estudiante arrEst1 : arrEst) {
        if (promedio <= arrEst1.getNota()) {
            arrEstEstudiantes[z] = arrEst1.getNombre();
            z++;
        }
    }
    return arrEstEstudiantes;
    }
    public void mostrarNombres() {
        String arr[] = alumnosExcelentes();
        System.out.println("Los estudiantes con las mejores notas: " + Arrays.toString(arr));
    }
}
