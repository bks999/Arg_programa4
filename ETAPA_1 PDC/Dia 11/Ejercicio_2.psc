//Escribir un programa que lea un número entero y devuelva el número de dígitos que
//componen ese número. Por ejemplo, si introducimos el número 12345, el programa
//	deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
//de división. Nota: recordar que las variables de tipo entero truncan los números o
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
