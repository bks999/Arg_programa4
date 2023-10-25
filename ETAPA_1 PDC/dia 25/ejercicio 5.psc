//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encon-
//trando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().

Algoritmo ejercicio_5
	Definir i,j, cont Como Entero
	Definir palabra, matriz Como Caracter
	Escribir "Ingrese una palabra de 9 caracteres"
	Leer palabra
	Dimension matriz(3,3)
	cont=0
	Para i=0 hasta 2 Hacer
		para j=0 Hasta 2 Hacer
			matriz(i,j)=Subcadena(palabra,cont,cont)
			cont=cont+1
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	

FinAlgoritmo
