//La función factorial se aplica a números enteros positivos. El factorial de un número entero
//positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
//hasta el 5. El programa deberá mostrar la siguiente salida:
//	!1 = 1
//	!2 = 1*2 = 2
//	...
//	!5 = 1*2*3*4*5 = 120

Algoritmo Ejercicio_4
	Definir n, i ,j Como Entero
	Definir p Como Caracter
	
	
	Para n=1 hasta 5 Con Paso 1 Hacer
		
		j=1
		p = " "
		Para i=1 hasta n Hacer
			
			j = i * j 
			Si i<n Entonces
				p = p + ConvertirATexto(i) + " x "
			SiNo
				p = p + ConvertirATexto(i)
			FinSi
		FinPara
		
		Escribir "!" n " =" p " = " j
	FinPara
FinAlgoritmo
