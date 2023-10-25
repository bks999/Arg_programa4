//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coorde-
//nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo sin_titulo
	Definir matriz, i, j, num, cont Como Entero
	Dimension matriz(5,5)
	
	Para i=0 hasta 4 Hacer
		Para j=0 hasta 4 Hacer
			matriz(i,j)=Aleatorio(0,20)
			Escribir sin saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Escribir "Ingrese el numero que desee encontrar en la matriz"
	Leer num
	cont=0
	Para i=0 hasta 4 Hacer
		para j=0 hasta 4 Hacer
			si num=matriz(i,j) Entonces
				Escribir "Busqueda exitosa"
				Escribir "El numero buscado se encuentra en la fila " i " y columna " j "."
				cont=1
			FinSi
		FinPara
	FinPara
	si cont=0 Entonces
		Escribir "El numero no se encuentra en la matriz"
	FinSi
	
FinAlgoritmo
