Algoritmo ejercicio_extra_4
	Definir hora, min, lt Como Real
	Escribir "Ingrese en cuantas horas devuelve el auto (en horas)"
	Leer hora
	Escribir "Ingrese los litros gastados"
	Leer lt
	
	min = hora*60
	
	Si hora = 2 Entonces
		Escribir "Solo abona $400 y la nafta va de regalo"
	SiNo
		Escribir "La devolucion se ha realizado pasadas las dos horas, por lo tanto se te cobrara " min * 5.20 " pesos de alquiler."
		Escribir "Tambien se te cobraran " lt * 40 " pesos por litro de nafta gastados. En total " min* 5.20 + lt * 40 " pesos."
	FinSi
	
	
FinAlgoritmo
