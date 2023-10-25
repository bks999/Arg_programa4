//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y termi-
//nada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vo-
//	cal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (inclu-
//	yendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación co-
//	rrespondiente. Utilice la estructura "según" para la transformación.
//		
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

Algoritmo Ejercicio_4_codificar_palabraFrase
	Definir palabraFrase Como Cadena
	Definir letra Como Caracter
	Definir long, i Como Entero
	Escribir "Ingresar una palabra o frase"
	Leer palabraFrase
	
	long = Longitud(palabraFrase)
	
	Para i=0 hasta long+1 Hacer
		letra = Subcadena(palabraFrase,i,i)
		letra= Minusculas(letra)
		Si letra="a" o letra="e" o letra="i" o letra="o" o letra="u" Entonces
			Escribir Sin Saltar codigo(letra)
		SiNo
			Escribir Sin Saltar letra
		FinSi
		si i = long Entonces
			escribir "."
		FinSi
		
	FinPara
	
FinAlgoritmo

SubProceso codificar <- codigo (letra Por Referencia)
	Definir codificar Como Caracter
	Si letra="a" o letra="e" o letra="i" o letra="o" o letra="u" Entonces
		Segun letra Hacer
			"a": 
				letra="@"
			"e":
				letra="#"
			"i":
				letra= "$"
			"o":
				letra="%"
			"u":
				letra="*"
		FinSegun
		codificar = letra
	FinSi
	
	
FinSubProceso
	