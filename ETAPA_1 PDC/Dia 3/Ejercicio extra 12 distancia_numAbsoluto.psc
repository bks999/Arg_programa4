//Pide al usuario dos números y muestra la "distancia" entre ellos (el valor absoluto de su
//diferencia, de modo que el resultado sea siempre positivo).

Algoritmo distancia
	Definir dist, num1, num2 Como Real
	Escribir "Ingrese dos numeros de los que se quiera saber la distancia"
	Leer num1, num2
	
	dist= abs(num2-num1)
	
	Escribir "La distancia de los numeros ingresados es " dist
FinAlgoritmo
