Algoritmo ejercicioCooperativoGuia4PRECLASE_Diego_MAS_SPM_asteriscos
	
	Definir tablero como Cadena
	Definir n, m como entero
	definir posicion como entero
	n=9
	m=12
	Dimension tablero[n,m]
	
	inicializarMatriz(tablero,n,m)
	agregarPalabra(tablero, "vector", 0,n,m)
	agregarPalabra(tablero, "matrix", 1,n,m)
	agregarPalabra(tablero, "programa", 2,n,m)
	agregarPalabra(tablero, "subprograma", 3,n,m)
	agregarPalabra(tablero, "subproceso", 4,n,m)
	agregarPalabra(tablero, "variable", 5,n,m)
	agregarPalabra(tablero, "entero", 6,n,m)
	agregarPalabra(tablero, "para", 7,n,m)
	agregarPalabra(tablero, "mientras", 8,n,m)
	imprimirMatriz(tablero, n, m)
	acomodarPalabras(tablero)
	Escribir "___________________________________"
	Escribir "-------MATRIZ CORREGIDA------------"
	Escribir "-------AQUI ABAJO------------------"
	imprimirMatriz(tablero, n, m)
FinAlgoritmo

Funcion inicializarMatriz(matriz,n,m)
	Definir i,j Como Entero
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			matriz[i,j] = "*"
		FinPara
	FinPara	
FinFuncion

Funcion imprimirMatriz(matriz,n,m)
	Definir i,j Como Entero
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			Escribir "[", matriz[i,j], "]" Sin Saltar
		FinPara
		Escribir ""
	FinPara	
FinFuncion

Funcion agregarPalabra(matriz,palabra,fila,n,m)
	Definir i,j,c Como Entero
	c=0	
	Para i=fila Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			matriz[i,j] = Mayusculas(Subcadena(palabra,c,c))
			c = c+1
		FinPara
	FinPara		
FinFuncion

Funcion lugarR <- buscarR(matriz,fila,m) 
	Definir lugarR, cont, i Como Entero
	cont = 0
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		
		Si matriz[fila,i] = "R"  Entonces
			lugarR = cont
        	i=m-1
		FinSi	
		cont = cont + 1
	FinPara	
FinFuncion


Funcion acomodarPalabras(matriz)  /// Inicio Funcion [5]
	Definir i,j,ubicacionR, ubicacionFinal, n, m Como Entero  // ubicacionR para guardar lo que retorna la funcion buscarR(). ubicacionFinal para guardar la cantidad de "espacios" que se tiene que mover la palabra hasta la posicion 5. 
	Definir matrizAux Como Caracter  // usamos una matriz auxiliar para guardar los cambios de la matriz que recibimos como argumento.
	n = 9
	m = 12
	Dimension matrizAux[n,m]  // dimensionamos la matriz auxiliar con el mismo tamaño de la matriz que recibimos.
	inicializarMatriz(matrizAux,n,m)  /// llamamos la Funcion [1] (Linea 22-29).	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		ubicacionR = buscarR(matriz,i,m)  /// llamamos la Funcion [4] (Linea 52-63).
		ubicacionFinal = 5 - ubicacionR // 5 es la posicion que nos pide el ejercicio y le restamos la ubicacionR que nos devuevle la funcion, buscarR.
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			Si (j + ubicacionFinal < m) Entonces  // hacemos una validacion que sea menor que m, para que no salga de rango y nos de error.
				matrizAux[i,j+ubicacionFinal] = matriz[i,j]  // guardamos en la matriz auxiliar en la misma fila, pero a la columna(j) le sumamos las posiciones que hacen falta hasta llegar a 5. En esta poscion guardamos el valor de matriz[i,j].
			FinSi			
		FinPara
	FinPara
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			matriz[i,j] = matrizAux[i,j]  // hacemos una copia de la matriz, para que nos quede actualizada la matriz que se recibe como argumento, es por eso que la matriz auxiliar solo se usa temporalmente.
			Si matriz[i,j] = "" Entonces // si la matriz tiene algun elemento en vacio(""). 
				matriz[i,j] = "*"  // le asignamos un valor de " ". para que visualmente la matriz al mostrarla por pantalla, quede bien.
			FinSi
		FinPara
	FinPara	
FinFuncion 