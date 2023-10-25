Funcion resultado <- Impar ( num Por Referencia )
	Definir resultado Como Logico
	resultado = num mod 3 = 0
Fin Funcion

Algoritmo ejercicio_2
	Definir num como entero
	Definir resultado Como Logico
	Escribir "Ingrese un numero para saber si es impar"
	Leer num
	
	resultado = Impar(num)
	Escribir "El numero ingresado es impar: " resultado
	
FinAlgoritmo
