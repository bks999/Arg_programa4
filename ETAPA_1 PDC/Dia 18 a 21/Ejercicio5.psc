//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el usua-
//rio. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor m�s
//grande del vector.

Algoritmo Ejercicio5
	Definir vector, n , i Como Entero
	Escribir "Ingrese el tama�o de la dimension"
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
	