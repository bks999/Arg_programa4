///Realizar un procedimiento que permita realizar la división entre dos números y muestre el cociente
///y el resto, utilizando el método de restas sucesivas.
///El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
///obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
///realizadas es el cociente. Por ejemplo: 50 / 13:
///		50 - 13 = 37 una resta realizada
///		37 - 13 = 24 dos restas realizadas
///		24 - 13 = 11 tres restas realizadas
///	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

Algoritmo ejercicio3Dia15
	Definir a, b Como Entero
	Escribir Sin Saltar "El programa realizar la división entre dos números y muestra el cociente "
	Escribir "y el resto, utilizando el método de restas sucesivas."
	Escribir "=========================================="
	Escribir "Ingrese primer número: "
	Leer a
	Escribir "Ingrese segundo número: "
	Leer b
	
	division(a,b)
	
FinAlgoritmo

SubProceso division(a,b)
	Definir residuo, cont Como Entero 
	residuo = 0
	cont = 0
	
	Hacer
		residuo <- a - b
		a <- residuo
		cont <- cont + 1
	Mientras Que residuo >= b
	
	Escribir "El residuo es: ", residuo, " y el cociente es: ", cont
	
FinSubProceso
	