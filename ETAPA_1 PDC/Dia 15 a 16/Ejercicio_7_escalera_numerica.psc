//Crear un programa que dibuje una escalera de n�meros, donde cada l�nea de n�meros co-
//mience en uno y termine en el n�mero de la l�nea. Solicitar la altura de la escalera al usuario al
//comenzar. Ejemplo: si se ingresa el n�mero 3:
//1
//12
//123

Algoritmo Ejercicio_7
	Definir altura Como Entero
	Escribir "Ingrese un numero como altura de la escalera"
	Leer altura
	
	Escalera(altura)
	
FinAlgoritmo

SubProceso Escalera(altura Por Referencia)
	Definir a, b Como Entero
	
	Para a = 1 hasta altura Hacer
		para b = 1 hasta a Hacer
			Escribir b sin saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
