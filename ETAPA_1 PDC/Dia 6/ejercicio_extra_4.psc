Algoritmo ejercicio_extra_4
	///compra<5, precio = 3000///
	///compra>=5 y compra<=10, precio = 2500///
	///compra>10, precio = 2000///
	///buscar cantidad de dinero por cada llanta, y monto total a pagar///
	
	Definir llantas, precio1, precio2, precio3 Como Entero
	Escribir "Cuantas llantas has comprado?"
	Leer llantas
	
	Si llantas <5 Entonces
		Escribir "Cada llanta tiene el valor de $3000, y el monto total a pagar es de: $" llantas * 3000 
	SiNo
		Si llantas >=5 y llantas <=10 Entonces
			Escribir "Cada llanta tiene el valor de $2500, y el monto total a pagar es de: $" llantas * 2500
		SiNo
			Si llantas > 10 Entonces
				Escribir "Cada llanta tiene el valor de $2000, y el monto total a pagar es de: $" llantas * 2000 
			FinSi
		FinSi
	FinSi
FinAlgoritmo
