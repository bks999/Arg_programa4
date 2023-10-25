//Realice un programa que, dado un año, nos diga si es bisiesto o no. Un año es bisiesto
//bajo las siguientes condiciones: Un año divisible por 4 es bisiesto y no debe ser divisible
//	por 100. Si un año es divisible por 100 y además es divisible por 400, también resulta
//	bisiesto. Nota: recuerde la función mod de PseInt


Algoritmo ejercicio_extra_5_anio_bisiesto
	Definir num Como Entero
	Escribir "Ingrese un año para verificar si es bisiesto"
	Leer num
	
	Si num mod 4=0 Y num mod 100 <> 0 Entonces
		Escribir "Es un año bisiesto"
	SiNo
		si num mod 100=0 Y num mod 400=0 Entonces
			Escribir "Es un año bisiesto"
		SiNo
			Escribir "No es un año bisiesto"
		FinSi
	FinSi
	
FinAlgoritmo
