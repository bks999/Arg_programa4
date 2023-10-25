Algoritmo EJERCICIO_SUBCADENA
	Definir palFrase como Cadena
	
	Escribir "Ingrese una palabra o frase"
	Leer palFrase
	
	Si Subcadena(palFrase, 0, 0)= "a" o Subcadena(palFrase,0,0) = "A" Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
