//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo ejercicio_extra_2
	Definir vector, i, n, suma Como Entero
	Escribir "Ingrese el tamaño de la dimension"
	Leer n
	Dimension vector(n)
	suma = 0
	Para i=0 Hasta n-1 Hacer
		Escribir "Ingrese un valor para rellenar el vector"
		Leer vector(i)
		suma= suma + vector(i)
	FinPara
	
	Escribir "El promedio de la suma de todos los valores ingresados es: " suma/n
FinAlgoritmo
