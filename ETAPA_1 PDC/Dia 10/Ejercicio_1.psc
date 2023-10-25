Algoritmo Ejercicio_1
	Definir i, z, n, sueldoBase, cantVentas, venta, sumaVenta Como Entero
	Definir vendedor Como Caracter
	Escribir "Cuantas personas empleados?"
	Leer n
	
	sumaVenta = 0
	Para i=1 Hasta n Hacer
		Escribir Sin Saltar "Nombre del vendedor: " 
		Leer vendedor
		Escribir Sin Saltar "Sueldo base: "
		Leer sueldoBase
		Escribir Sin Saltar "Total de ventas realizadas: "
		Leer cantVentas
		
		Para z=1 Hasta cantVentas Hacer
			Escribir Sin Saltar "Cobro por venta " z ": " 
			Leer venta
			sumaVenta = sumaVenta + venta
			
		FinPara
		Escribir "Comision del 10% por todas las ventas: " sumaVenta * 10 / 100
		Escribir "Su sueldo total es: " sueldoBase + sumaVenta*10/100
			
	FinPara
	
FinAlgoritmo
