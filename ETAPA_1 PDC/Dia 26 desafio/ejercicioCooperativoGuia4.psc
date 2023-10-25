Algoritmo ejercicioCooperativoGuia4
	definir tablero como cadena
	
	dimension tablero(9,12)

	inicializarMatriz(tablero)
	agregarPalabra(tablero,"vector", 0)
	agregarPalabra(tablero,"matrix", 1)
	agregarPalabra(tablero,"programa", 2)
	agregarPalabra(tablero,"subprograma", 3)
	agregarPalabra(tablero,"subproceso", 4)
	agregarPalabra(tablero,"variable", 5)
	agregarPalabra(tablero,"entero", 6)
	agregarPalabra(tablero,"para", 7)
	agregarPalabra(tablero,"mientras", 8)
	acomodarPalabra(tablero)
	imprimirMatriz(tablero)

FinAlgoritmo
/// inicializamos matriz 
SubProceso inicializarMatriz (tablero)
	definir i,j Como Entero
	para i<-0 hasta 8 Hacer
		para j<-0 hasta 11
			tablero(i,j)= "*"
		FinPara
		escribir " "
	FinPara
FinSubProceso

///agregarPalabra(tablero, "vector", 0)
//subprograma agregarPalabra:
//	Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, la fila en la que se
//	agregará y la propia palabra. Una vez el subprograma reciba eso debe descomponer la palabra y
//	agregarla a la matriz en la posición deseada.
//	Similar al ejercicio 12 de la guía.
SubProceso agregarPalabra (tablero,palabra,fila) 
	definir i,cont como Entero
	definir Long como entero
	long= Longitud(palabra)
	cont=1

	para i <- 0 hasta 8 Hacer
		Si i<=long entonces
			tablero(fila,i)= Subcadena(palabra,i,i)
		SiNo
			tablero(fila,i)="*"
		FinSi
		
	 FinPara
	
FinSubProceso
//
//Debe recibir como parámetros la matriz a imprimir, la cantidad de filas y la cantidad de columnas.
//Para que veamos la matriz en la consola cuando lo necesitemos.
//	Tengamos en cuenta que para que no queden pegadas las letras vamos a imprimir un espacio, la
//		letra y otro espacio. Lo hacemos en imprimir para no modificar el contenido de la matriz.
//			Ambos subprogramas son similares al ejercicio 8 de la guía.
Subproceso imprimirMatriz(tablero)
	Definir i,j Como Entero
	
	Para i=0 hasta 8 hacer
		Para j=0 hasta 11 hacer
			Escribir Sin Saltar tablero(i,j)
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

Subproceso retorno <- buscarR(tablero)
	Definir i,j, retorno, cont,fila como entero
	cont=0
	para fila=0 hasta 8 hacer
		para i=0 hasta 11 Hacer
			Si tablero(fila,i)<>"r" Entonces
				cont=cont+1
			FinSi
			retorno=cont
		FinPara
	FinPara

FinSubProceso
//
//subprograma acomodarPalabra:
//	Se le debe indicar sólo la matriz en donde se acomodarán las palabras.
//	Ahora debemos crear una lógica que nos permita mover las palabras de las filas. Recordar que
//	podemos llamar a buscarR para saber cuántos espacios hay que mover las palabras.
//	Una vez que las palabras se muevan hay que llenar los espacios con asteriscos nuevamente: es
//		decir, si la palabra se mueve dos posiciones a la derecha hay que agregar dos asteriscos a la
//			izquierda de la fila.
//		Nota: ¡recuerden que la primera letra ?R? debe quedar en la posición 5 de la matriz! Ya sabemos
//			en qué posición se encuentra ?R? así que sólo debemos llevarla a la posición 5 corriendo toda la
//palabra.

SubProceso acomodarPalabra(tablero,palabra)
	Definir i,j, k, cont,fila como entero
	cont=0
	fila=0
	j=0
	Para i=0 hasta 11 hacer
		cont=buscarR(tablero)
		k=5-cont
		si i<k entonces
			tablero(fila,i)="*"
		sino
			si i>=k entonces
			tablero(fila,i)=subcadena(palabra,j,j)
			k=k+1
			j=j+1
			fila=fila+1
		FinSi
		
		FinSi
		Escribir sin saltar tablero(fila,i)
	FinPara
	
FinSubProceso



	