//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

Algoritmo Ejercicio_1_intercambio_valores
	Definir A, B Como Entero
	Escribir "Ingrese dos numeros enteros para luego intercambiar sus valores"
	Leer A, B
	
	IntercambioValores(A, B)
	Escribir A
	Escribir B
	
FinAlgoritmo 

SubProceso IntercambioValores(A Por Referencia, B Por Referencia)
	Definir C Como Entero
	C=A
	A=B
	B=C
FinSubProceso
