//Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio del
//año, y el precio del mismo producto al finalizar el año. El programa debe calcular cuál fue el
//porcentaje de aumento que tuvo ese producto en el año y mostrarlo por pantalla.

Algoritmo porcentaje_aumento_precio_producto
	
	Definir producto como Caracter
	Definir precio1, precio2, porcentaje Como Real
	
	Escribir "Ingrese el nombre del producto"
	Leer producto
	
	Escribir "Ingrese el precio de " producto " al inicio del año"
	Leer precio1
	
	Escribir "Ingrese el precio de " producto " al finalizar el año"
	Leer precio2
	
	porcentaje = (precio2 - precio1) / precio1 * 100
	
	Escribir "El porcentaje de aumento que tuvo el producto " producto " en el año es de " porcentaje "%."
	
FinAlgoritmo
