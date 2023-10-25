//Escribir un programa que calcule el volumen de un cilindro. Para ello se deberá solicitar al
//	usuario que ingrese el radio y la altura. Mostrar el resultado por pantalla.
//	volumen = pi * radio2 * altura

Algoritmo volumen_cilindro
	
	Definir radio, altura, pii, volumen Como Real
	
	Escribir "Ingrese el valor del radio del cilindro"
	Leer radio
	Escribir "Ingrese el valor de la altura del cilindro"
	Leer altura
	
	pii = 3.14
	volumen = pii * radio * altura
	
	Escribir "El volumen del cilindro es " volumen "."
FinAlgoritmo
