//Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya pi-
//diendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo Ejercicio_2_temperatura_media
	Definir tempMin, tempMax, media Como Real
	Definir n, i  Como Entero
	Escribir "Ingrese los dias totales"
	Leer n
	
	Para i=1 Hasta n Hacer
		Escribir Sin Saltar "Dia " i ": temperatura minima: "
		Leer tempMin
		Escribir Sin Saltar "Dia " i ": temperatura maxima: "
		Leer tempMax
		media = tempMedia (tempMin,tempMax) //para invocar el subproceso se debe igualar a una variable ya definida//
		Escribir "La temperatura media del dia " i " es " media
		Escribir " "
		Escribir "============================="
	FinPara
	
FinAlgoritmo

SubProceso media <- tempMedia (min,max)
	Definir media Como Real
	media <- (min + max)/2
	
FinSubProceso
