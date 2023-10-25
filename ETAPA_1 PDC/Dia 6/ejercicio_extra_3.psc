Algoritmo ejercicio_extra_3
	Definir num Como Entero
	Escribir "Ingrese un numero de 3 cifras"
	Leer num
	
	Si trunc(num/100)>=0 Y trunc(num/100)<10 Entonces
		Escribir "NUMERO CORRECTO"
	SiNo
		Escribir "NUMERO INCORRECTO"
	FinSi
	
FinAlgoritmo
