//Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea
//saber cuánto deberá pagar finalmente por su compra.

Algoritmo descuento_compra
	Definir compra, descuento, total Como Real
	Escribir "Ingrese el total de su compra"
	Leer compra
	
	descuento= 15/100* compra
	total = compra - descuento
	Escribir "El precio final a pagar de su compra es de $" total "."
	
FinAlgoritmo
