Algoritmo ejercicio_3
	Definir num, suma, cantidad Como Entero
	Escribir "Ingrese un valor"
	Leer num
	suma = 0
	cantidad = 0
	
	Mientras num <> (-1) Hacer
		suma = suma + num
		cantidad = cantidad + 1
		Leer num
	FinMientras
	
	Escribir suma / cantidad 
FinAlgoritmo
