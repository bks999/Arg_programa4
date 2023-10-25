Algoritmo ejercicio_3
	Definir num, suma Como Entero
	Definir n, respuesta como Caracter
	
	suma = 0
		Repetir
			Escribir "ingrese un numero"
			Leer num
			suma = suma + num
			Escribir "Desea ingresar otro numero (si/no)"
			Leer n
			respuesta = Minusculas(n)
		Mientras Que respuesta <> "no"
		
		Escribir "La suma es de " suma
	
	
FinAlgoritmo
