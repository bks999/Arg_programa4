//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usua-
//rio. A continuación, se deberá crear una función que reciba el vector y devuelva el valor más
//grande del vector.

Algoritmo Ejercicio5
	Definir vector, n , i Como Entero
	Escribir "Ingrese el tamaño de la dimension"
	Leer n
	Dimension vector(n)
	Escribir "Ingrese los valores del vector"
	Para i=0 hasta n-1 Hacer
		Leer vector(i)
		
	FinPara
	
	Escribir "El valor mas grande del vector es: " vectorG(vector, n ,i)
FinAlgoritmo

Funcion A <- vectorG(vector, n , i)
	Definir A Como Entero
	A=0
	Para i=0 hasta n-1 Hacer
		si vector(i)>A Entonces
			A=vector(i)
		FinSi
	FinPara
FinFuncion
	