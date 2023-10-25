Algoritmo frase_palabra_4caracteres
	Definir frasePalabra como cadena
	Escribir "Escribir una palabra o frase"
	Leer frasePalabra
	
	Si Longitud(frasePalabra) = 4 Entonces
		Escribir Concatenar(frasePalabra,"!")
	SiNo
		Escribir Concatenar(frasePalabra, "?")
	FinSi
	
FinAlgoritmo
