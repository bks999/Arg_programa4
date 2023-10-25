/*
Los profesores del curso de programación de Egg necesitan llevar un registro 
de las notas adquiridas por sus 10 alumnos para luego obtener una cantidad de 
aprobados y desaprobados. Durante el período de cursado cada alumno obtiene 
4 notas, 2 por trabajos prácticos evaluativos y 2 por parciales. 
Las ponderaciones de cada nota son:
Primer trabajo práctico evaluativo 10%
Segundo trabajo práctico evaluativo 15%
Primer Integrador 25%
Segundo integrador 50%
Una vez cargadas las notas, se calcula el promedio y se guarda en el arreglo. 
Al final del programa los profesores necesitan obtener por pantalla la cantidad 
de aprobados y desaprobados, teniendo en cuenta que solo aprueban los alumnos
con promedio mayor o igual al 7 de sus notas del curso.

 */
package EjerciciosExtra;

/**
 *
 * @author Sol
 */
public class EjercicioExtra4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
    }
    
}

/* private static int CANTIDADALUMNOS = 10;
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        double[] notasAlumnos = new double[10];
        int contador = 0;
        int desaprobados = 0;
        int aprobados = 0;
        double notaTp1,notaTp2,integrador1,integrador2;
        double porcentaje1,porcentaje2,porcentaje3,porcentaje4,notaFinal;
        
        do{
            System.out.println("Ingrese la nota del "+(contador+1)+"º alumno.");
            System.out.println("TP 1: ");
            notaTp1 = input.nextDouble();
            while(!ingresoNota(notaTp1)){
                notaTp1 = input.nextDouble();
            }
            System.out.println("TP 2: ");
            notaTp2 = input.nextDouble();
            while(!ingresoNota(notaTp2)){
                notaTp2 = input.nextDouble();
            }
            System.out.println("Integrador 1: ");
            integrador1 = input.nextDouble();
            while(!ingresoNota(integrador1)){
                integrador1 = input.nextDouble();
            }            
            System.out.println("Integrador 2: ");
            integrador2 = input.nextDouble();
            while(!ingresoNota(integrador2)){
                integrador2 = input.nextDouble();
            }
            porcentaje1 = (10*notaTp1)/10;
            porcentaje2 = (15*notaTp2)/10;
            porcentaje3 = (25*integrador1)/10;
            porcentaje4 = (50*integrador2)/10;
            notaFinal = porcentaje1+porcentaje2+porcentaje3+porcentaje4;
            notasAlumnos[contador] = notaFinal;
            contador++;
            if(notaFinal < 70.0){
                desaprobados++;
            }
            else{
                aprobados++;
            }
        }while(contador < CANTIDADALUMNOS);
        System.out.println("La nota de los alumnos fueron: ");
        imprimeVector(notasAlumnos);
        System.out.println("Aprobaron: "+aprobados);
        System.out.println("Desaprobados: "+desaprobados);
    }
    
    public static boolean ingresoNota(double numero){
        boolean esValido = false;
        if (numero<=10){
            return esValido = true;
        }
        else{
            return esValido;
        }
    }
    public static void imprimeVector(double vector[]){
        for(int i=0;i<CANTIDADALUMNOS;i++){
            System.out.print(" "+(vector[i]/10)+" ");
        }
        System.out.println("");
    }
*/
