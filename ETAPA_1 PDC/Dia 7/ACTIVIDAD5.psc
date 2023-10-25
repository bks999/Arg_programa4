Algoritmo sin_titulo
	Definir num, suma, min, max, contador Como Entero
	Escribir "Ingrese un numero"
	Leer num
	
	contador=0
	suma=0
	min =1
	max =10
	
	Mientras num <10 y num > 0 Hacer
		Leer num
		suma = suma + num
		contador = contador + 1
	FinMientras
	
	Escribir "Usted ingresó " contador " dentro del intervalo"
FinAlgoritmo
