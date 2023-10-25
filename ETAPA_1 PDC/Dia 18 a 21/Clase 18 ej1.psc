//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.

Algoritmo sin_titulo
	Definir vector, i como entero
	Dimension vector[5]
	Escribir "Ingrese 5 valores de forma continua"
	
	para i=0 hasta 4
		leer vector[i]
	FinPara
	
	para i=0 hasta 4
		si	i=4 Entonces
			Escribir Sin Saltar vector[i]
		SiNo
			Escribir Sin Saltar vector[i], ", "
		FinSi
		
	FinPara
	Escribir " "
	
FinAlgoritmo
