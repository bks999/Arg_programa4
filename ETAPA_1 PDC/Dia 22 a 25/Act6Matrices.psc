//Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algoritmo
//	que compruebe si una matriz de datos enteros es m�gica o no, y en caso de que sea
//	m�gica escribir la suma. Adem�s, el programa deber� comprobar que los n�meros introducidos
//	son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el tama�o de la matriz
//	que no debe superar orden igual a 10.



Algoritmo Act6Matrices
	Definir n, i, j, x, yy, num, matriz, sumafilas, sumadiagonal2, sumacolumnas, sumadiagonal  Como Entero
	
	Hacer 
		Escribir "Ingresar el tama�o de la matriz"
		Leer n
	Mientras Que n >= 10

	Dimension matriz(n,n)
	
//Rellenar la matiz
	Para i <- 0 Hasta n-1 Hacer
		Para j <- 0 Hasta n-1 Hacer
			Hacer
				Escribir "Ingresar los valores de la matriz"
				Leer num
			Mientras Que num < 1  o num > 9
			
			matriz(i,j) = num
			
		FinPara
	FinPara	
	
	//Imprimir  la matriz
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			Escribir Sin Saltar "[" matriz(i,j) "]"
		FinPara
		Escribir""
	FinPara
	
	//Hacer sumas de filas, columnas y diagonales
	sumadiagonal=0
	sumadiagonal2=0
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			Si i=j Entonces
				sumadiagonal = sumadiagonal + matriz(i,j)
			FinSi
			
		FinPara
		sumadiagonal2 = sumadiagonal2 + matriz(i,(n-j))
	FinPara
	
	
	Para x <- 0 Hasta n-1 Hacer
		sumacolumnas=0
		sumafilas=0
		Para yy <- 0 Hasta n-1 Hacer
			
			sumafilas = sumafilas + matriz(x,yy)
			sumacolumnas = sumacolumnas + matriz(yy,x)
		FinPara
		
	
	FinPara
	
	//Condicion para imprimir si es o no m�gico
Si sumafilas = sumacolumnas y sumafilas = sumadiagonal y sumafilas = sumadiagonal2 y sumacolumnas = sumadiagonal y sumacolumnas = sumadiagonal2 y sumadiagonal = sumadiagonal2 Entonces
	Escribir""
	Escribir "Es un CUADRADO M�GICO"
	Escribir ""
	Escribir "Ya que: "
	Escribir ""
	Escribir "la suma de la diagonal principal es " sumadiagonal
	Escribir""
	Escribir "la suma de la diagonal secundaria es " sumadiagonal2
	Escribir ""
	
	Para x <- 0 Hasta n-1 Hacer
		Escribir "La suma de la fila "  x  " es " sumafilas
		Escribir ""
		Escribir "La suma de la columna "  x  " es " sumacolumnas
		Escribir""
	FinPara
SiNo
	Escribir "NO es un cuadrado m�gico"
FinSi
FinAlgoritmo

	