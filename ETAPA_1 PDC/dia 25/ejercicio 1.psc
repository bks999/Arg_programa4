//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo ejercicio_1_guia5
	Definir matriz, i, j Como Entero
	Dimension matriz(3,3)
	Escribir "Ingrese los valores de la matriz"
	Para i=0 hasta 2 Hacer
		Para j=0 hasta 2 Hacer
			Escribir sin saltar "Matriz(" i "," j "): " 
			Leer matriz(i,j)
		FinPara
	FinPara
	Escribir ""
	Para i=0 hasta 2 Hacer
		Para j=0 hasta 2 Hacer
			Escribir sin saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
