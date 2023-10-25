//Escriba un programa para obtener el grado de eficiencia de un operario de una f�brica de
//	tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un per�odo
//	de prueba:
//		? Producir menos de 200 tornillos defectuosos.
//		? Producir m�s de 10000 tornillos sin defectos.
//	? El grado de eficiencia se determina de la siguiente manera:
//		? Si no cumple ninguna de las condiciones, grado 5.
//			? Si s�lo cumple la primera condici�n, grado 6.
//				? Si s�lo cumple la segunda condici�n, grado 7.
//					? Si cumple las dos condiciones, grado 8
//					Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso que pide el
//							ejercicio. No hacer todos al mismo tiempo y despu�s probar.
Algoritmo ejercicio_3
	Definir defectuosos, sinDefectos Como Entero
	Escribir "Ingrese la cantidad de produccion de tornillos defectuosos"
	Leer defectuosos
	Escribir "Ingrese la cantidad de produccion de tornillos sin defectos"
	Leer sinDefectos
	
	Si defectuosos <200 y sinDefectos > 10000 Entonces
		Escribir "Grado de eficiencia: 8."
	SiNo
		Si defectuosos < 200 Entonces
			Escribir "Grado de eficiencia: 6."
		SiNo
			Si sinDefectos >10000 Entonces
				Escribir "Grado de eficiencia: 7."
			SiNo
				Escribir "Grado de eficiencia: 5."
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
