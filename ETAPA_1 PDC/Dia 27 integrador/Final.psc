Algoritmo Final
    //Definición de variables
    Definir calculadora Como Entero
    Definir cadena1, cadena2 Como Caracter
    Definir diagonal3D1, diagonal3D2 Como Entero
    //Definimos las 3 dimensiones de la matriz calculadora
    Dimension calculadora(3, 3, 3)
    //Asignamos valores a las cadenas de texto
    cadena1 = "789090362"
    cadena2 = "484529837"
    //Inicializamos la matriz
    inicializarMatriz(calculadora)
	//Llenamos las matrices como se marca en el enunciado
    llenarMatriz_Z0(calculadora, cadena1)
    llenarMatriz_Z1(calculadora, cadena2)
    llenarMatriz_Z2(calculadora)
    //Mostramos los resultados de la matriz
    imprimirMatriz(calculadora)
    //Asignamos los valores de las diagonales 3D
	diagonal3D1 = calculadora(0, 2, 0)*calculadora(1, 1,1)*calculadora(2, 0, 2)
	diagonal3D2 = calculadora(0, 0, 0)*calculadora(1, 1,1)*calculadora(2, 2, 2)
	
    //Escribimos los resultados de las diagonales
    Escribir "La multiplicación de los elementos de la diagonal 3D 1 es ", diagonal3D1
    Escribir "La multiplicación de los elementos de la diagonal 3D 2 es ", diagonal3D2
	Escribir "{" calculadora(0,2,1) "}"
	Escribir "{" calculadora(1,1,2) "}"
	Escribir "{" calculadora(2,2,2) "}"
	Escribir "{" calculadora(0,1,0) "}"
FinAlgoritmo

SubProceso inicializarMatriz(matriz)
	Definir i,j,z Como Entero
	
	Para z=0 hasta 2 Hacer
		para i=0 hasta 2 Hacer
			para j=0 hasta 2 Hacer
				matriz(z,i,j)=0
			FinPara
		FinPara
	FinPara
	
FinSubProceso

SubProceso llenarMatriz_Z0(matriz, cad)
	Definir i,j, aux Como Entero
	aux=0
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			matriz(0,i,j)=ConvertirANumero(Subcadena(cad,aux,aux))
			aux=aux+1
		FinPara
	FinPara
FinSubProceso

SubProceso llenarMatriz_Z1(matriz, cad)
	Definir i,j, aux Como Entero
	aux=0
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			matriz(1,i,j)=ConvertirANumero(Subcadena(cad,aux,aux))
			aux=aux+1
		FinPara
	FinPara
FinSubProceso

SubProceso llenarMatriz_Z2(matriz)
	Definir i,j Como Entero
	
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			matriz(2,i,j)=matriz(0,i,j) * matriz(1,i,j)
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz)
	Definir i,j Como Entero
	
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			Escribir sin saltar "[" matriz(0,i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			Escribir sin saltar "[" matriz(1,i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	Para i=0 hasta 2 Hacer
		para j=0 hasta 2 Hacer
			Escribir sin saltar "[" matriz(2,i,j) "]"
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	
	
FinSubProceso

















