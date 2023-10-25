//Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La suce-
//sión de Fibonacci es la sucesión de los siguientes números:
//	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
//	La sucesión del número 2 se calcula sumando (1+1)
//	Análogamente, la sucesión del número 3 es (1+2),
//	Y la del 5 es (2+3),
//	Y así sucesivamente...
//La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
//	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//		Fibonacci (n) = 1 para todo n <= 1
//			Por lo tanto, si queremos calcular el término "n" debemos escribir una función que reciba
//				como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.

Algoritmo sin_titulo
	Definir termino,val Como Entero
	Escribir "ingrese el termino que desea conocer de la serie de Fibonacci"
	leer termino
	val=fibonacci(termino)
	Escribir "Fibonacci (",termino,") = ",val
FinAlgoritmo

Funcion val<-fibonacci(termino)
	Definir anterior1,anterior2,val,i Como Entero
	anterior1=1
	anterior2=0
	si termino=0 Entonces
		val=0
	SiNo
		si termino=1 Entonces
			val=1
		SiNo
			Para i=1 hasta termino Hacer
				val=anterior1+anterior2
				anterior1=anterior2
				anterior2=val
			FinPara
		FinSi
	FinSi
	
FinFuncion