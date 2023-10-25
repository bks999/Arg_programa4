//Hacer un programa que ingrese por teclado un número total de segundos y que luego
//	pueda mostrar la cantidad de horas, minutos y segundos que existen en el valor
//	ingresado.

Algoritmo Ejercicio4
	Definir seconds, min, hours Como Real
	Escribir "Ingrese un numero para los segundos"
	Leer seconds
	
	min= seconds/60
	hours= min/60
	
	Escribir "Horas: " hours
	Escribir "Minutos: " min
	Escribir "Segundos: " seconds
	
FinAlgoritmo
