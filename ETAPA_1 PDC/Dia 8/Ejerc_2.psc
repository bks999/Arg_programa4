//Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
//todos ellos.
//Para poder lograr, por ejemplo, el m�ximo inicializaremos una variable en cero llamada
//numeroMaximo. Luego iremos comparando cada n�mero que se ingresa con esta variable.
//Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
//m�ximo entre estos n�meros ser� 5. Si luego ingreso el n�mero 2, se eval�a 2 > 5 lo que
//resultar� falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una l�gica
//similar tendr� el m�nimo.

Algoritmo sin_titulo
	Definir num, numMax, numMin, Suma, Contador Como Entero
	numMax=0
	Suma=0
	Contador=0
	NumMin=200
	Escribir "Ingrese un numero. Para salir ingrese 0"
	Repetir
		Leer num
		
		Si num <> 0 y num <= numMin 
			NumMin = num
		FinSi
		
		Si num > numMax
			numMax=num
		FinSi
		
		Suma=Suma+num
		Contador=Contador+1
		
	Mientras Que num <> 0
	
	Escribir "El numero maximo es: ", numMax
	Escribir "El numero minimo es: ", numMin
	Escribir "El promedio es ", Suma/(Contador-1)

FinAlgoritmo
