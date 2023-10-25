//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coorde-
//nadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo ejercicio_2
	Definir matriz, i, j, m ,n, num , cont Como Entero
	m=5
	n=5
	Dimension matriz(m,n)
	
	Para i=0 hasta m-1 hacer
		Para j=0 hasta n-1 Hacer
			matriz(i,j)= Aleatorio(0,10)
		FinPara
	FinPara
	
	Escribir "Ingrese un numero entero que desee buscar en la matriz"
	Leer num
	cont = 0
	Para i=0 hasta m-1 hacer
		Para j=0 hasta n-1 Hacer
			Si num=matriz(i,j) Entonces
				Escribir "Busqueda exitosa"
				Escribir "El numero " num " se encuentra en la posicion (" i "," j ")"
			FinSi
			Si num<>matriz(i,j) Entonces
				cont=cont +1
			FinSi
			Si cont=(m*n) Entonces
				Escribir "El numero " num " no se encuentra en la matriz"
			FinSi
		FinPara
	FinPara
FinAlgoritmo
