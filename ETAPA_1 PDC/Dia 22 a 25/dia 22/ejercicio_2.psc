//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coorde-
//nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//
//encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo ejercicio_2
	Definir matriz, i, j, num, cont Como Entero
	Dimension matriz(5,5)
	//llenar matriz
	Para i=0 Hasta 4 Hacer
		para j=0 hasta 4 Hacer
			matriz(i,j)=Aleatorio(1,20)
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Ingrese un valor que desee buscar en la matriz"
	Leer num
	cont=0
	Para i=0 Hasta 4 Hacer
		para j=0 hasta 4 Hacer
			Si num=matriz(i,j) Entonces
				Escribir "El valor buscado se encuentra en la fila " i " y columna " j
				cont=1
			FinSi
		FinPara
		
	FinPara
	Si cont=0 Entonces
		Escribir "Busqueda fallida"
	FinSi
FinAlgoritmo
