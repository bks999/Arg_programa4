Funcion retorno <- EsMultiplo (num1 Por Referencia, num2 Por Referencia)
	Definir retorno Como Logico
	retorno = num2 mod num1 = 0
FinFuncion

Algoritmo ejercicio_3
	Definir num1, num2 Como Entero
	Definir resultado Como Logico
	Escribir "Ingrese dos numero para saber si son multiplos"
	Leer num1, num2
	resultado = EsMultiplo (num1, num2)
	Escribir num1 " es multiplo de " num2 ": " resultado
	
FinAlgoritmo
