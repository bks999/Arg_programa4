//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subpro-
//	ceso para imprimir la matriz.

Algoritmo ejercicio_4
	Definir matriz, m Como Entero
	Escribir "Ingrese un valor para las cardinales de la matriz cuadrada"
	Leer m
	Dimension matriz(m,m)
	
	llenarMatriz(matriz,m)
	mostrarMatriz( matriz, m)
	
FinAlgoritmo

SubProceso llenarMatriz(matriz,m)
	Definir i, j Como Entero
	
	Para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			si i=j Entonces
				matriz(i,j)=0
			SiNo
				matriz(i,j)=Aleatorio(1,10)
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz( matriz, m)
	Definir i,j Como Entero
	Escribir "Los valores de la matriz cuadrada " m " son: "
	Para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	