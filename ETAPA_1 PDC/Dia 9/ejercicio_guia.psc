Algoritmo ejercicio_guia
	Definir i, num, numMax Como Entero
	numMax=0
	
	Para i=1 Hasta 5 Con Paso 1 Hacer
		Escribir "ingrese un num"
		leer num
		si num>numMax Entonces
			numMax = num
		FinSi
	FinPara
	escribir "el numero maximo ingresado fue " numMax
FinAlgoritmo
