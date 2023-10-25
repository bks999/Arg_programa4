//Crear un programa que dibuje una escalera de números, donde cada línea de números co-
//mience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario al
//comenzar. Ejemplo: si se ingresa el número 3:
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
