//Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya pi-
//diendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//programa pedirá el número de días que se van a introducir.

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
