//Calcular el cambio de monedas en dólares y euros al ingresar cierta cantidad de dinero en
//pesos.

Algoritmo cambio_moneda_dolares_euros
	Definir monedaPesos, monedaDolar, monedaEuro Como Real
	
	Escribir "Ingrese el valor de la moneda en pesos que quiera cambiar"
	Leer monedaPesos
	
	monedaDolar = monedaPesos / 360
	monedaEuro = monedaPesos / 380
	
	Escribir monedaPesos " equivale a " monedaDolar " dolares, y " monedaEuro " euros."
	
FinAlgoritmo
