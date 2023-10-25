//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//con números aleatorios entre 1 y 100 y mostrar su traspuesta.
Algoritmo ejercicio_extra_2
	Definir matriz,n,m, i,j Como Entero
	Escribir "Ingrese el tamaño de la matriz"
	Escribir Sin Saltar "Filas: "
	Leer n
	Escribir Sin Saltar"Columnas: "
	Leer m
	Dimension matriz(n,m)
	
	Escribir ""
	//llenar matriz
	Para i=0 hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			matriz(i,j)=Aleatorio(1,100)
		FinPara
	FinPara
	//mostrar matriz
	Para i=0 hasta n-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	//mostrar matriz traspuesta (dos maneras. La otra es cambiar los iniciadores i por j, y j por i)
	
	Para j=0 hasta m-1 Hacer
		para i=0 hasta n-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
