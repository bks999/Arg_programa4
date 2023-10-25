//Realizar un procedimiento que permita realizar la división entre dos números y muestre el co-
//ciente y el resto utilizando el método de restas sucesivas.
//
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

Algoritmo ejercicio_3_division_cociente_resto
	Definir num1, num2, i, cont Como Entero
	Escribir "Ingrese dos numeros"
	Leer num1, num2
	Escribir " "
	Escribir "===================="
	Escribir " "
	cont=0
	i=1
	Mientras num1>=num2 Hacer
		Escribir sin saltar num1 " / " num2 " = " varResta(num1,num2) ", " i " restas realizadas."
		num1=varResta(num1,num2)
		i=i+1
		Escribir " "
	FinMientras
	
FinAlgoritmo

Subproceso Resta <- varResta(n1,n2 Por Valor)
	Definir Resta Como Entero
	Resta = n1-n2	
	
FinSubProceso





	