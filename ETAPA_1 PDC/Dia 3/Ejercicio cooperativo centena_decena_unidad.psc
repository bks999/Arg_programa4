//Ingrese un número de tres cifras y muestra la unidad, decena y la centena.
//Por ejemplo, si el número ingresado por pantalla es 123 el programa debe mostrar:
//	CENTENA: 1
//	DECENA: 2
//	UNIDAD: 3

Algoritmo centena_decena_unidad
	Definir num, centena, decena, unidad Como Entero
	
	Escribir "Ingrese un numero de 3 cifras"
	Leer num
	
	centena = trunc (num/100)
	decena = trunc (num/10 - centena*10)
	unidad = num mod (trunc(num/10)*10)
	
	Escribir "Centena: " centena
	Escribir "Decena: " decena
	Escribir "Unidad: " unidad
	
FinAlgoritmo
