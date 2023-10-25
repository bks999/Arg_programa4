//Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de
//viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que determine la
//	hora de llegada a la ciudad B.

Algoritmo hora_llegada
	Definir hhA, mmA, ssA, T, hhB, mmB, ssB, aux Como Entero
	Escribir "Ingrese el horario de partida del ciclista desde la ciudad A"
	Escribir "Hora: " Sin Saltar
	Leer hhA
	Escribir "Minutos: " Sin Saltar
	Leer mmA
	Escribir "Segundos: " Sin Saltar
	Leer ssA
	Escribir "El ciclista llega a la ciudad B. Ingrese el valor de los segundos: " Sin Saltar
	Leer T
	aux= T+ ssA + hhA*3600 + mmA*60
	hhB=trunc(aux/3600)
	mmB=trunc((aux mod 3600)/60)
	ssB=(aux mod 3600 ) mod 60
	
	
	Escribir "La hora de llegada es: " hhB ":" mmB ":" ssB "."
	
FinAlgoritmo
