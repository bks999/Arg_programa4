Algoritmo Ejercicio_5
	Definir num, iPar, iImpar, sumaPar, sumaImpar, mediaPar, mediaImpar Como Real
	iPar = 0
	iImpar = 0
	sumaImpar = 0
	sumaPar = 0
	Hacer
		Escribir "Ingrese un numero"
		Leer num
		Si num mod 2 = 0 Entonces
			sumaPar = sumaPar + num
			iPar = iPar + 1
		FinSi
		Si num mod 2 <> 0 Entonces
			sumaImpar = sumaImpar + num
			iImpar = iImpar + 1
		FinSi
		 
	Mientras Que (iPar+ iImpar)<10
	
	mediaPar = sumaPar/iPar
	mediaImpar = sumaImpar/iImpar
	
	Escribir "La media de los numeros pares es: " mediaPar
	Escribir "La media de los numeros impares es: " mediaImpar
	
FinAlgoritmo
