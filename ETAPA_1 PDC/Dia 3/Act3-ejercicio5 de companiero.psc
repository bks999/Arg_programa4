Algoritmo sin_titulo
	definir precioInicial , precioFinal , porcentaje Como Real
	
	escribir" Ingresar precio inicial"
	leer precioInicial
	escribir " Ingresar precio final"
	leer precioFinal
	
	porcentaje <- (precioFinal - precioInicial) / precioInicial * 100
	
	escribir" El porcentaje de aumento anual fue de un ", porcentaje ,"%"
	
FinAlgoritmo
