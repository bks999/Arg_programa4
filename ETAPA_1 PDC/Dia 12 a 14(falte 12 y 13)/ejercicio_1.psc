Funcion variable_de_retorno <- Sumar ( num1 Por Referencia, num2 Por Referencia )
	Definir variable_de_retorno Como Entero
	variable_de_retorno = num1 + num2
Fin Funcion

Algoritmo ejercicio_1
	Definir num1, num2, resultado Como Entero
	Escribir "Ingrese dos numero enteros"
	Leer num1, num2
	
	resultado = Sumar (num1, num2)

	Escribir "La suma de " num1 " y " num2 " es: " resultado
FinAlgoritmo
