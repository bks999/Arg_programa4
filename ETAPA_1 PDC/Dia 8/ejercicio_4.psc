//Se debe realizar un programa que:
//	1o) Pida por teclado un número (entero positivo).
//	2o) Pregunte al usuario si desea introducir o no otro número.
//	3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//	4o) Muestre por pantalla la suma de los números introducidos por el usuario.


Algoritmo ejercicio_4
	definir num, suma como entero
	definir resp como caracter
	suma=0
	hacer 
		escribir "ingrese un numero entero positivo" 
		leer num 
		escribir" desea ingresar otro numero? (responda S o N)"
		leer resp
		suma=suma+num
		resp=mayusculas(resp)
	Mientras Que resp <>"N" 
	Escribir "la suma de los numeros es " suma
	
	
FinAlgoritmo
