Algoritmo extra15
	Definir horasalida, minsalida, segsalida, segViaje, segfinal, seginicial, horallegada, minllegada, segllegada como enteros
	
	Escribir "Ingrese la hora de salida"
	Leer horasalida
	Escribir "Ingrese los minutos del horario de salida"
	Leer minsalida
	Escribir "Ingrese los segundos del horario de salida"
	Leer segsalida
	Escribir "Ingrese el tiempo de viaje en segundos"
	Leer segViaje
	
	seginicial <- horasalida * 3600 + minsalida * 60 + segsalida
	segfinal <- seginicial + segViaje
	
	horallegada <- trunc (segfinal / 3600)
	minllegada <- trunc ((segfinal % 3600)/60)
	segllegada <- (segfinal % 3600 ) % 60
	
	Escribir "La hora de llegada es:"
	Escribir horallegada " horas; " minllegada " minutos; " segllegada " segundos "
	
FinAlgoritmo
