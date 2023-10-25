//Realizar un algoritmo que lea un número y que muestre su raíz cuadrada y su raíz cúbica.
//	PSeInt no tiene ninguna función predefinida que permita calcular la raíz cúbica, ¿Cómo se
//	puede calcular?

Algoritmo raizCuadrada_raizCubica
	Definir num, raizCuadrada, raizCubica Como Real
	Escribir "Ingrese un numero"
	Leer num
	
	raizCuadrada= num^(1/2)
	raizCubica= num^(1/3)
	
	Escribir "Su raiz cuadrada es " raizCuadrada
	Escribir "Su raiz cubica es " raizCubica
	
FinAlgoritmo
