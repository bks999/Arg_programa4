//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
//trando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().

Algoritmo ejercicio_5
	Definir matriz, palabra como cadena
	Definir i,j Como Entero
	Dimension matriz(3,3)
	Repetir
		Escribir "Ingrese una palabra de 9 caracteres"
		Leer palabra
	Hasta Que Longitud(palabra)=9
	
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			si i=0 Entonces
				matriz(i,j)=Subcadena(palabra,j,j)
			SiNo
				si i=1 Entonces
					matriz(i,j)=Subcadena(palabra,(j+3),(j+3))
				SiNo 
					si i=2 Entonces
						matriz(i,j)=Subcadena(palabra,(j+6),(j+6))
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			Escribir sin saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
