//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo ejercicio_1
	Definir matriz , i , j Como Entero
	Dimension matriz(3,3)
	
	Para i=0 hasta 2 Hacer
		Para j=0 hasta 2 Hacer
			Escribir "Ingrese un valor a matriz(" i "," j "): " Sin Saltar
			Leer matriz(i,j)
		FinPara
	FinPara
	Para i=0 hasta 2 Hacer
		Para j=0 hasta 2 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinAlgoritmo
