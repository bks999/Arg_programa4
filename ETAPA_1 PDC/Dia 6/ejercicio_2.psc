//Realizar un programa que, dado un n�mero entero, visualice en pantalla si es par o impar.
//En caso de que el valor ingresado sea 0, se debe mostrar "el n�mero no es par ni impar".
//Nota: investigar la funci�n mod de PSeInt

Algoritmo ejercicio_2
	Definir num Como Entero
	Leer num
	
	Si num mod 2 = 0 y num>0 Entonces
		Escribir "Es un numero par"
	SiNo
		Si num mod 2 > 0 Entonces
			Escribir "Es un numero impar"
		SiNo 
			Escribir "El numero no es par ni impar"
		FinSi
	FinSi
	
FinAlgoritmo
