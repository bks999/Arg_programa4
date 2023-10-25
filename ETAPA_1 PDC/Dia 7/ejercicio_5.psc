Algoritmo ejercicio_5
	Definir min, max, num, suma, cantidad Como Entero
	Escribir "Ingrese un numero minimo"
	Leer min
	Escribir "Ingrse un numero maximo"
	Leer max
	Escribir "Ingrese un numero dentro de esos intervalos"
	Leer num
	suma = 0
	cantidad = 0
	Mientras num >min y num <max Hacer
		suma = suma + num
		cantidad = cantidad + 1
		Leer num
		
	FinMientras
	
	Escribir "Usted ingreso " cantidad+1 "dentro del intervalo"
FinAlgoritmo
