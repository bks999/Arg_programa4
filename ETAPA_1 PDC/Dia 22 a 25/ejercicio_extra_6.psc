//Realizar un programa que permita visualizar el resultado del producto de una matriz de ente-
//ros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden iniciali-
//zarse evitando así el ingreso de datos por teclado. Para conocer más acerca de cómo se rea-
//liza la multiplicación entre matrices consultar el siguiente link:
//	
//https://es.wikibooks.org/wiki/%C3%81lgebra_Lineal/Matriz_por_vector

Algoritmo ejercicio_extra_6
	Definir matriz,producto,vector,n,m,i,j como real
	n=3
	m=n
	Dimension matriz(m,n)
	Dimension vector(n)
	Dimension producto(m)
	
	Escribir "Matriz 3*3"
	Para i=0 Hasta m-1 Hacer
		para j=0 Hasta n-1 Hacer
			matriz(i,j)=Aleatorio(1,20)
			Escribir "[" matriz(i,j) "]" Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Vector 3"
	Para i=0 Hasta m-1 Hacer
		vector(i)=Aleatorio(1,20)
		producto(i)=0
		Escribir "[" vector(i) "]"
	FinPara
	Escribir ""
	
	Escribir "Multiplicacion de matriz por vector"
	j=0
	Para i=0 Hasta m-1 Hacer
		Para j=0 hasta m-1 hacer
			producto(i)=producto(i) + matriz(i,j)*vector(j)
		FinPara
		Escribir "[" producto(i) "]"
	FinPara
	
FinAlgoritmo
