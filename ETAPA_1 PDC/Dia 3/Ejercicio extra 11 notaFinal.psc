//Un alumno desea saber cuál será su calificación final en la materia de Algoritmos. Dicha
//calificación se compone de los siguientes porcentajes:
//	a. 55% del promedio de sus tres calificaciones parciales.
//	b. 30% de la calificación del examen final.
//	c. 15% de la calificación de un trabajo final.

Algoritmo notaFinal
	Definir calificacionFinal, parciales, a,b,c, promedioParciales, examenFinal, trabajoFinal Como Real
	Escribir "Ingrese sus tres calificaciones parciales"
	Leer a,b,c
	promedioParciales= (a+b+c)/3
	Escribir "Ingrese su calificacion del examen final"
	Leer examenFinal
	Escribir "Ingrese su calificacion del trabajo final"
	Leer trabajoFinal
	
	calificacionFinal=(promedioParciales*55/100)+(examenFinal*30/100)+(trabajoFinal*15/100)
	
	Escribir "La calificacion final es: " calificacionFinal
FinAlgoritmo
