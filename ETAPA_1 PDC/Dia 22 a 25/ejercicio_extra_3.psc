//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//ceros. Por ejemplo, nuestro matriz final debería verse así:
//	111111111111111
//	100000000000001
//	100000000000001
//	100000000000001
//	111111111111111

Algoritmo ejercicio_extra_3
	Definir matriz, n, m, i, j Como Entero
	n=5
	m=15
	Dimension matriz(n,m)
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 hasta m-1 Hacer
			Si i=0 O i=(n-1) Entonces
				matriz(i,j)=1
				Escribir Sin Saltar matriz(i,j)
			SiNo
				Si j=0 O j=(m-1) Entonces
					matriz(i,j)=1
					Escribir Sin Saltar matriz(i,j)
				SiNo
					matriz(i,j)=0
					Escribir Sin Saltar matriz(i,j)
				FinSi
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
