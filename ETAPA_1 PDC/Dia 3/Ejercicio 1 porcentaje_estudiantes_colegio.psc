//Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso
//actual. Diseñar un algoritmo para este propósito. Recuerda que para calcular el porcentaje
//puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la
//cantidad total de niños, y la cantidad total de niñas que hay en el curso.

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
