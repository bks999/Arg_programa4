//Una verdulería ofrece las manzanas con descuento según la siguiente tabla:
//	No DE KILOS COMPRADOS % DESCUENTO
//	0 - 2					0%
//	2.01 - 5				10%
//	5.01 - 10				15%
//	10.01 en adelante		20%
//	Determinar cuánto pagará una persona que compre manzanas en esa verdulería


Algoritmo ejercicio_extra_6_manzanas
	Definir manzanas, venta, precio Como real
	Escribir "Ingrese la cantidad de manzanas que compra"
	Leer manzanas
	precio=0.5
	

	si manzanas>=0 y manzanas<=2 Entonces
		Escribir "El descuento es de 0%. Debe pagar $" manzanas*precio
	SiNo 
		si manzanas>2 y manzanas<=5 Entonces
			Escribir "El descuento es de 10%. Debe pagar $" (manzanas*precio)*90/100
		SiNo
			si manzanas>5 y manzanas<=10 Entonces
				Escribir "El descuento es de 15%. Debe pagar $" (manzanas*precio)*85/100
			SiNo
				si manzanas>1 Entonces
					Escribir "El descuento es de 20%. Debe pagar $" (manzanas*precio)*80/100
				FinSi
			FinSi
		FinSi
	FinSi
	
	
FinAlgoritmo
