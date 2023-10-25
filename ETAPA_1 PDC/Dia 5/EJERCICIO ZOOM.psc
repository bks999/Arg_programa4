Algoritmo ejercicio_zoom
	Definir horario, horarioIngreso, min Como Real
	Escribir "Inserte el horario en el que ha ingresado al zoom"
	Leer horario
	Escribir "Inserte los minutos"
	Leer min
	
	horarioIngreso = 19
	
	Si horario >= horarioIngreso Y min <= 15 Entonces
		Escribir "Llegaste a tiempo, tienes presente."
	SiNo
		Escribir "Hoy tendras tardanza. Recuerda avisarle a tus coaches cuando llegaras tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
	FinSi
	
FinAlgoritmo
