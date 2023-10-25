//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
//grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
//sultados por pantalla.

Algoritmo ejercicio_3
	Definir matriz, n , m Como Entero
	Escribir "Ingrese el tamaño de la matriz"
	Escribir "Fila" Sin Saltar
	Leer n
	Escribir "Columna" Sin Saltar
	Leer m
	Dimension matriz(n,m)
	Escribir ""
	llenarMatriz(matriz,n,m)
	sumaMatriz(matriz,n,m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,n,m)
	Definir i, j Como Entero
	
	Para i=0 Hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			matriz(i,j)=Aleatorio(1,20)
		FinPara
	FinPara
FinSubProceso

SubProceso sumaMatriz(matriz,n,m)
	Definir i, j, suma Como Entero
	suma=0
	
	Para i=0 Hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
	Para i=0 Hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			suma=suma+matriz(i,j)
		FinPara
	FinPara
	Escribir ""
	Escribir "La suma de todos los valores de la matriz es " suma
FinSubProceso
