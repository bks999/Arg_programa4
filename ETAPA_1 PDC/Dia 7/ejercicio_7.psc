Algoritmo ejercicio_7
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3 Como Real
	Escribir "Ingresar nombre del alumno"
	Leer nombre
	Escribir "Ingrese sus tres notas"
	Leer nota1, nota2, nota3
	Escribir "La nota final es: " (nota1*10/10 + nota2*50/10 + nota3*40/10)/10
	
	Mientras nota1>0 y nota1<=10 y nota2>0 y nota2<=10 y nota3>0 y nota3<=10 Hacer
		Escribir "Ingresar nombre del alumno"
		Leer nombre
		Escribir "Ingrese sus tres notas"
		Leer nota1, nota2, nota3
		Escribir "La nota final es: " (nota1*10/10 + nota2*50/10 + nota3*40/10)/10
	FinMientras
	Escribir "No has ingresado un nombre, o has ingresado mal una nota"
FinAlgoritmo
