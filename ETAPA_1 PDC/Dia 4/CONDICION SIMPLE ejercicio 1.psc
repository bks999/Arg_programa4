//Un hombre desea saber si su sueldo es mayor al sueldo mínimo, el programa le pedirá al
//	usuario su sueldo actual y el sueldo mínimo. Si el sueldo es mayor al mínimo se debe
//		mostrar un mensaje por pantalla indicándolo.

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
