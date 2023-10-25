//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subpro-
//	ceso para imprimir la matriz.

Algoritmo ejercicio_4
	Definir matriz, m Como Entero
	Escribir "Ingrese el tamaño de la matriz cuadrada"
	Leer m
	Dimension matriz(m,m)
	Escribir ""
	llenarMatriz(matriz,m)
	mostrarMatriz(matriz,m)
FinAlgoritmo

SubProceso llenarMatriz(matriz,m)
	Definir i,j como entero
	
	para i=0 Hasta m-1 Hacer
		para j=0 Hasta m-1 Hacer
			si i=j Entonces
				matriz(i,j)=0
			SiNo
				matriz(i,j)=Aleatorio(1,10)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz,m)
	Definir i,j como entero
	
	para i=0 Hasta m-1 Hacer
		para j=0 Hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	