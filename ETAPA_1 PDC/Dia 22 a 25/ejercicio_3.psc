//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subpro-
//grama que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los re-
//sultados por pantalla.

Algoritmo ejercicio_3
	Definir matriz, n, m Como Entero
	Escribir "Ingrese las dimensiones de la matriz"
	Leer n
	Leer m
	
	Dimension matriz(n,m)
	
	llenarMatriz(matriz,n,m)
	sumaMatriz(matriz,n,m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz, n , m)
	Definir i, j Como Entero
	
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 hacer
			matriz(i,j)= Aleatorio(0,10)
		FinPara
	FinPara
FinSubProceso

SubProceso sumaMatriz(matriz,n,m)
	Definir suma, i,j como entero
	suma=0
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 hacer
			suma = suma + matriz(i,j)
		FinPara
	FinPara
	Escribir "Los valores de la matriz(" n "," m ") son : "
	Para i=0 hasta n-1 Hacer
		Para j=0 hasta m-1 hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
	FinPara
	Escribir""
	Escribir "La suma de todos los valores de la matriz(" n "," m ") es " suma "."
FinSubProceso
	