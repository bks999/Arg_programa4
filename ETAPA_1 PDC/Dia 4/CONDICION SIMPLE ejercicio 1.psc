//Un hombre desea saber si su sueldo es mayor al sueldo m�nimo, el programa le pedir� al
//	usuario su sueldo actual y el sueldo m�nimo. Si el sueldo es mayor al m�nimo se debe
//		mostrar un mensaje por pantalla indic�ndolo.

Algoritmo sueldo_actual_minimo
	Definir sueldoActual, sueldoMinimo Como Real
	Escribir "Mi sueldo actual es " 
	Leer sueldoActual
	
	Escribir "El sueldo minimo actual es de "
	Leer sueldoMinimo
	
	Si sueldoActual > sueldoMinimo Entonces
		Escribir "Tu sueldo actual es mayor al sueldo minimo de " sueldoMinimo
	FinSi
	
	Si sueldoActual <= sueldoMinimo Entonces
		Escribir "Tu sueldo actual no llega al sueldo minimo"
	FinSi
	
FinAlgoritmo
