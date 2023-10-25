//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
//grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
//sultados por pantalla.

Algoritmo ejercicio_3
	Definir matriz, n, m Como Entero
	Escribir "Ingrese el tamaño de la matriz"
	Escribir "Filas: " Sin Saltar
	Leer n
	Escribir "Columnas: " Sin Saltar
	Leer m
	Dimension matriz(n,m)
	Escribir ""
	llenarMatriz(matriz,n,m)
	sumarMatriz(matriz,n,m)
FinAlgoritmo

SubProceso llenarMatriz(matriz,n,m)
	Definir i, j como entero
	
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			matriz(i,j)=Aleatorio(0,10)
		FinPara
	FinPara
FinSubProceso

SubProceso sumarMatriz(matriz,n,m)
	Definir i,j, suma Como Entero
	
	suma=0
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			suma=suma+matriz(i,j)
		FinPara
	FinPara
	
	Escribir "La suma total de los valores de la matriz es: " suma
	Escribir ""
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	