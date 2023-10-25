//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

Algoritmo Ejercicio_1_enc15
	Definir num1, num2 Como Entero
	Escribir "Ingrese dos numeros enteros"
	Leer num1, num2
	intercambioValores(num1,num2) //num1 y num2 son argumentos
	Escribir "El valor del primer numero es " num1
	Escribir "El valor del segundo numero es " num2
FinAlgoritmo

SubProceso intercambioValores (n1 Por Referencia,n2 Por Referencia) //n1 y n2 son parametros
	Definir numAux como entero
	numAux = n1
	n1 = n2
	n2 = numAux
FinSubProceso
