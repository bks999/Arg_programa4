//Realizar una función que calcule y retorne la suma de todos los divisores del número n distin-
//tos de n. El valor de n debe ser ingresado por el usuario.

Funcion retorno <- sumaDivisor (n)
	Definir retorno, i, suma Como Entero
	suma= 0
	Para i = 1 hasta n Hacer
		Si n mod i = 0 Entonces
			suma = suma + i
		FinSi
	FinPara
	retorno = suma - n
FinFuncion
Algoritmo ejercicio_6
	Definir n, sumaD como entero
	Escribir "Ingrse un numero entero"
	Leer n
	sumaD = sumaDivisor(n)
	Escribir "La suma de los divisores de " n " es de " sumaD
FinAlgoritmo
