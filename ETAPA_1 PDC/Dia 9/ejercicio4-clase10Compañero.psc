Algoritmo sin_titulo
	Definir i, j,  num Como Entero
	Definir p Como Caracter
	
	j=1
	
	Para num <- 1 Hasta 5 Con Paso 1 Hacer
		
		j = 1
		p = " "
		
		Para i <- 1 Hasta num Con Paso 1 Hacer
			
			
			j = i * j
			
			Si i < num Entonces
				p = p + ConvertirATexto(i) + " x "
			SiNo
				p = p + ConvertirATexto(i)
			FinSi
			
			
		FinPara
		
		Escribir "!" num " = " p " = " j
	FinPara
	
FinAlgoritmo

