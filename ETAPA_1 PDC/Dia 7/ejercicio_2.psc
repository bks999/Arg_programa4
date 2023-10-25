Algoritmo ejercicio_2
	Definir num, suma, limite Como Entero
	Escribir "Ingrese un valor limite"
	Leer limite
	Escribir "Ingrese un valor"
	Leer num
	
	suma = 0
	
	Mientras suma < limite Hacer
		suma = suma + num
		Escribir "Ingrese otro numero"
		Leer num
		
	FinMientras
	
	Escribir "Has sumado " suma+num ". Te has pasado el valor limite."
FinAlgoritmo
