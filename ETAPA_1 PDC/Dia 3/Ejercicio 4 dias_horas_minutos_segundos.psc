//A partir de una conocida cantidad de d�as que el usuario ingresa a trav�s del teclado, escriba
//un programa para convertir los d�as en horas, en minutos y en segundos. Por ejemplo
//	1 d�a = 24 horas = 1440 minutos = 86400 segundos

Algoritmo dias_horas_minutos_segundos
	
	Definir dias, hs, min, seg como real
	
	Escribir "Ingrese el valor de dias"
	Leer dias
	
	hs = 24 * dias
	min = 1440 * dias
	seg = 86400 * dias
	
	Escribir dias " dias equivale a " hs " horas, " min " minutos, " seg " segundos."
	
FinAlgoritmo
