//Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
//componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
//	deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
//de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o
//	resultados.

Algoritmo Ejercicio_2
	
	Definir num,num2, cont Como Entero
	Escribir "Ingrese un numero entero"
	Leer num
	cont=0
	num2 = num
	Mientras num> 0 Hacer
		num = Trunc(num/10)
		cont=cont+1
	FinMientras
	
	Escribir num2 " tiene " cont " digitos."
FinAlgoritmo
