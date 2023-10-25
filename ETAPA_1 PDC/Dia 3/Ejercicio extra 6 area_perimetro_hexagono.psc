//Mostrar el área y perímetro de un hexágono.

Algoritmo area_perimetro_hexagono
	Definir areaHexagono, perimetroHexagono, lado, apotema Como Real
	
	Escribir "Ingrese el valor del lado del hexagono"
	Leer lado
	
	perimetroHexagono = 6 * lado
	apotema = raiz ( ((lado^2) - (lado/2)^2)  )
	areaHexagono = (perimetroHexagono * apotema) / 2
	
	Escribir "El perimetro del hexagono es de " perimetroHexagono " y el area es de " areaHexagono
FinAlgoritmo
