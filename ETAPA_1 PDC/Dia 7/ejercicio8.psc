//Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//		investigar la funci�n trunc().
Algoritmo ejercicio8
	Definir num, cont Como Entero
	
	Escribir "Ingrese un numero entero positivo"
	leer num
	cont = 0 
	Mientras num > 0 Hacer
		cont = cont +1
		num = trunc(num / 10)
		
	FinMientras
	
	Escribir "El numero tiene " cont " digitos"
FinAlgoritmo