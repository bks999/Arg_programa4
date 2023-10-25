//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algo-
//	ritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea
//	mágica escribir la suma. Además, el programa deberá comprobar que los números introduci-
//	dos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz
//	que no debe superar orden igual a 10.

Algoritmo ejercicio_6
	Definir matriz, m, i, j, sumaDiagonal1, sumaDiagonal2, sumaFila, sumaFila1, sumaColumna, cont Como Entero
	Definir log, log1 Como Logico
	Repetir
		Escribir "Ingrese el tamaño de la matriz que no debe superar orden igual a 10"
		Leer m
	Hasta Que m<=10 y m>0
	
	Dimension matriz(m,m)
	
	Escribir "Ingrese todos los valores de la matriz"
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Hacer
				Leer matriz(i,j)
			Hasta Que matriz(i,j)>=1 y matriz(i,j)<=9
		FinPara
	FinPara
	Escribir ""
	//Mostrar matriz//
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir ""
	FinPara
	
	//suma diagonales
	sumaDiagonal1=0
	sumaDiagonal2=0
	para i=0 hasta m-1 Hacer
		para j=0 hasta m-1 Hacer
			si i=j Entonces
				sumaDiagonal1=sumaDiagonal1+matriz(i,j)
			FinSi
			//i+j=m-1 diagonal secundaria
		FinPara
	FinPara
	j=m-1
	para i=0 hasta m-1 Hacer
		sumaDiagonal2=sumaDiagonal2+matriz(i,j)
		j=j-1
	FinPara
	si sumaDiagonal1=sumaDiagonal2 Entonces
		log=Verdadero
	SiNo
		log=Falso
	FinSi
	
	//suma filas y columnas
	sumaFila=0
	sumaColumna=0
	para i=0 hasta m-1 hacer 
		para j=0 hasta m-1 Hacer
			sumaFila=sumaFila+matriz(i,j)
			sumaColumna=sumaColumna+matriz(j,i)
		FinPara
		si sumaFila<>sumaColumna Entonces
			cont=1
		FinSi
		sumaFila1=sumaFila
		sumaFila=0
		sumaColumna=0
	FinPara
	
	Escribir ""
	Si log=Verdadero y cont=0 y sumaFila1=sumaDiagonal1 Entonces
		Escribir "La matriz ingresada es una matriz cuadrada magica, URRAAAAA"
		Escribir ""
		Escribir "Suma de diagonal principal: " sumaDiagonal1
		Escribir "Suma de diagonal secundaria: " sumaDiagonal2
		
		para i=0 hasta m-1 hacer 
			para j=0 hasta m-1 Hacer
				sumaFila=sumaFila+matriz(i,j)
				sumaColumna=sumaColumna+matriz(j,i)
			FinPara
			j=i
			Escribir "Suma de fila " i ": " sumaFila
			Escribir "Suma de columna " j ": " sumaColumna
			sumaFila=0
			sumaColumna=0
		FinPara
	SiNo
		Escribir "Lamentablemente la matriz no es magica"
	FinSi
FinAlgoritmo
