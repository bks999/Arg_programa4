//Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje de ni�as hay en el curso
//actual. Dise�ar un algoritmo para este prop�sito. Recuerda que para calcular el porcentaje
//puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la
//cantidad total de ni�os, y la cantidad total de ni�as que hay en el curso.

Algoritmo porcentaje_estudiantes_colegio
	
	Definir varones, mujeres, porcentajeVarones, porcentajeMujeres Como Real
	
	Escribir "Ingrese cuantos estudiantes varones hay en el curso"
	Leer varones
	
	Escribir "Ingrese cuantas estudiantes mujeres hay en el curso"
	Leer mujeres
	
	porcentajeVarones = varones / (varones + mujeres) * 100
	porcentajeMujeres = mujeres / (varones + mujeres) * 100
	
	Escribir "En el curso hay " porcentajeVarones " porcentaje de estudiantes varones, y " porcentajeMujeres " porcentaje de estudiantes mujeres."
	
FinAlgoritmo
