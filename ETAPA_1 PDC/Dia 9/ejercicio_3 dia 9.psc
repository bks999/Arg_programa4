//Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
//sus estudiantes:
//	§ Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//	reprueba el curso si tiene una nota final inferior a 6.5
//		§ Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//		§ La mayor nota obtenida en las exposiciones.
//		§ Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//		las 3 notas y calculará todos informes claves que requiere el docente.

Algoritmo ejercicio_3
	Definir i, clase, notaIntegr, notaExpo, notaParcial, notaFinal, sumaIntegr, notaExpoMax, sumaParcial Como Real
	Definir alumno Como Caracter
	Escribir Sin Saltar "Ingrese el total de alumnos en esta clase: " 
	Leer clase
	sumaIntegr = 0
	notaExpoMax = 0
	sumaParcial = 0
	Para i=1 Hasta clase Hacer
		Escribir Sin Saltar "Nombre del alumno: "
		Leer alumno
		Escribir Sin Saltar "Nota de TP integrador: "
		Leer notaIntegr
		Escribir Sin Saltar "Nota de exposicion: "
		Leer notaExpo
		Escribir Sin Saltar "Nota de parcial: " 
		Leer notaParcial
		
		//notaFinal = notaIntegr*35/10 + notaExpo*25/10 + notaParcial*40/10//
		Si notaIntegr>7.5 Entonces
			sumaIntegr= sumaIntegr +1
		FinSi
		
		Si notaExpo > notaExpoMax Entonces
			notaExpoMax = notaExpo
		FinSi
		
		Si notaParcial > 4.0 y notaParcial<7.5 Entonces
			sumaParcial = sumaParcial +1
		FinSi
	FinPara
	
	Escribir " El porcentaje de alumos con nota de integrador mayor a 7.5 es " sumaIntegr/clase*100
	Escribir " La nota de exposicion mas alta es de: " notaExpoMax
	Escribir " Total de alumnos con nota de parcial entre 4.0 y 7.5: " sumaParcial
FinAlgoritmo
