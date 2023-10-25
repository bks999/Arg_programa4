//Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//		letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//		Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
//M=77 T=84

Algoritmo Ejercicio_6
	Definir letra Como Caracter
	Escribir "Ingrese una letra"
	Leer letra
	letra = Mayusculas(letra)
	Ascii(letra)
	
FinAlgoritmo

SubProceso Ascii(letra)
	Si letra > 'M' Y letra < 'T' Entonces
		Escribir "Has ingresado una letra entre M y T"
	SiNo
		Escribir "No has ingresado una letra entre M y T"
	FinSi
FinSubProceso
	