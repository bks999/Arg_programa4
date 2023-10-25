//Construir un programa que simule un menú de opciones para realizar las cuatro
//	operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
//	numéricos enteros. El usuario, además, debe especificar la operación con el primer
//carácter de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
//	o ?m? para la multiplicación y ?D? o ?d? para la división.
Algoritmo ejercicio_1
	Definir num1, num2 Como Entero
	Definir opAritmetica Como Caracter
	
	Escribir "Ingrese el primer numero"
	Leer num1
	Escribir "Ingrese el segundo numero"
	Leer num2
	Escribir "Ingresa la operacion aritmetica: S para sumar, R para restar, M para multiplicar, D para dividir"
	Leer opAritmetica
	
	Segun Mayusculas(opAritmetica) Hacer
		"S":
			Escribir num1 " + " num2 " = " num1+num2
		"R":
			Escribir num1 " - " num2 " = " num1-num2
		"M":
			Escribir num1 " x " num2 " = " num1*num2
		"D":
			Escribir num1 " / " num2 " = " num1/num2
	FinSegun
	
FinAlgoritmo
