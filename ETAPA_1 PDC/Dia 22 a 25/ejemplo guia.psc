Algoritmo sin_titulo
	Definir vector,i,j Como Entero
	Dimension vector(3,3)
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 hasta 2 Con Paso 1 Hacer
			vector[i,j]=Aleatorio(0,10)
			Escribir Sin Saltar "[" vector(i,j) "]"
		Fin Para
		Escribir " "
	Fin Para
FinAlgoritmo
