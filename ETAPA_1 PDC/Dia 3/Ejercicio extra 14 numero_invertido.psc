//Dado un n�mero de dos cifras, dise�e un algoritmo que permita obtener el n�mero
//	invertido. Ejemplo, si se introduce 23 que muestre 32.

Algoritmo numero_invertido
	Definir num, numInvertido Como Entero
	Escribir "Ingrese un numero de dos cifras"
	Leer num
	numInvertido= trunc(num/10) + (num mod 10)*10
	
	Escribir "Su valor invertido es " numInvertido
FinAlgoritmo

