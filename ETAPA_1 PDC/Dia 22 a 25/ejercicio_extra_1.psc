//Realizar un programa que rellene de números aleatorios una matriz a través de un subpro-
//grama y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo ejercicio_extra_1
	Definir matriz, f , c Como Entero
	Escribir "Ingrese el tamaño de la matriz"
	Escribir "Filas: " Sin Saltar
	Leer f
	Escribir "Columnas: " Sin Saltar
	Leer c
	Dimension matriz(f,c)
	llenarMatriz(matriz,f,c)
	mostrarMatriz(matriz, f,c)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,f,c)
	Definir i,j Como Entero
	Para i=0 Hasta f-1 Hacer
		Para j=0 hasta c-1 Hacer
			matriz(i,j)=Aleatorio(1,20)
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz, f,c)
	Definir i,j Como Entero
	Para i=0 Hasta f-1 Hacer
		Para j=0 hasta c-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	