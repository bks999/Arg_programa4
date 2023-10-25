Algoritmo Ejercicio_5
	Definir num, iPar, sumaPar, mediaPar Como Real
	iPar = 0
	sumaPar = 0
	Hacer
		Escribir "Ingrese un numero"
		Leer num
		Si num mod 2 = 0 Entonces
			sumaPar = sumaPar + num
			iPar = iPar + 1
		FinSi
		 
	Mientras Que iPar<5
	
	Escribir "La suma de los numeros pares es: " sumaPar
	
FinAlgoritmo
