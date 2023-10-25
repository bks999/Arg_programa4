///Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar///
///una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá///
///mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la///
///clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema correctamente.///

Algoritmo Ejercicio_1
	Definir clave Como Caracter
	Definir i Como Entero
	i = 0
	
	Repetir
		Escribir "Ingrese clave"
		Leer clave
		i = i + 1
	Mientras Que clave <> "eureka" y i < 3
	
	Si i>=3 Entonces
		Escribir "Has agotado tus tres intentos."
	FinSi
	
	Si clave = "eureka" Entonces
		Escribir "Has ingresado correctamente al sistema luego de " i " intentos."
	FinSi
	
FinAlgoritmo
