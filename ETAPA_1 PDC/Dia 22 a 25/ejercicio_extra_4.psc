//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. Inicia-
//lice las matrices para evitar el ingreso de datos por teclado.

Algoritmo ejercicio_extra_4
	Definir matriz1, matriz2, n, i, j, k, multi Como Entero
	n=3
	Dimension matriz1(n,n)
	Dimension matriz2(n,n)
	Dimension multi(n,n)
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			matriz1(i,j)=Aleatorio(1,10)
			Escribir "[" matriz1(i,j) "]" Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir ""
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			matriz2(i,j)= Aleatorio(10,20)
			multi(i,j)=0
			Escribir Sin Saltar "[" matriz2(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
	Escribir "" 
	
	Para j=0 Hasta n-1 Hacer
		Para i=0 Hasta n-1 Hacer
			para k=0 hasta n-1 Hacer
				multi(i,j)= multi(i,j) + matriz1(i,k)*matriz2(k,j)
			FinPara
		FinPara
	FinPara
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			Escribir Sin Saltar "[" multi(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
