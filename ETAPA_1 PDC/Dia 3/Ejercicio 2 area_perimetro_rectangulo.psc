//Solicitar al usuario que ingrese la base y altura de un rectángulo, y calcular y mostrar por
//pantalla el área y perímetro del mismo
//area = base * altura
//perimetro = 2 * altura + 2 * base.

Algoritmo area_perimetro_rectangulo
	
	Definir base, altura, area, perimetro Como Real
	
	Escribir "Ingrese valor de la base del rectangulo"
	Leer base
	Escribir "Ingrese valor de la altura del rectangulo"
	Leer altura
	
	area = base * altura
	perimetro = (2 * altura) + (2 * base)
	
	Escribir "El area del rectangulo es " area " y el perimetro es " perimetro "."
FinAlgoritmo
