//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Funcion retorno <- numPrimo (num)
	Definir retorno Como Caracter
	Definir i, contador Como Entero
	contador = 0
	Para i = 1 hasta num Hacer
		Si num mod i = 0 Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	Si contador = 2 Entonces
		retorno = " es primo"
	SiNo
		retorno = " no es primo"
	FinSi
FinFuncion

Algoritmo ejercicio_5
	Definir num Como Entero
	Definir primoNoPrimo Como Caracter
	
	Escribir "Ingrese un numero entero"
	Leer num
	primoNoPrimo = numPrimo(num)
	Escribir num, primoNoPrimo
	
FinAlgoritmo
