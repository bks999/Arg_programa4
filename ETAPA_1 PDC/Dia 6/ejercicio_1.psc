//Construir un programa que simule un men� de opciones para realizar las cuatro
//	operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
//	num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer
//car�cter de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
//	o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
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
