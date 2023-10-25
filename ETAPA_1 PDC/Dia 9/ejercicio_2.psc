//Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
//espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el funcionamiento
//		de la función Subcadena(). SubCadena(cadena,desde,hasta)

Algoritmo ejercicio_2
	Definir frase, frase1 Como Cadena
	Definir long, i, a Como Entero
	Escribir "Ingrese una frase o palabra"
	Leer frase
	long = Longitud(frase)
	a=1
	Para i=long Hasta a Con Paso -1 Hacer
		
		frase1 = subCadena(frase,long,a)
		Escribir sin saltar frase1, " "
	FinPara
	
	
FinAlgoritmo
