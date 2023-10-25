//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	
//	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha repre-
//		sentada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
//		
//		dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
//			dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo Ejercicio_8_dia_anterior
	Definir dia, mes, anio Como Entero
	Escribir "Ingrese una fecha"
	Escribir "Dia: " Sin Saltar
	Leer dia
	Escribir "Mes: " Sin Saltar
	Leer mes
	Escribir "Año: " Sin Saltar
	Leer anio
	
	diaAnterior(dia,mes,anio)
	
FinAlgoritmo

SubProceso diaAnterior(dia,mes,anio)
	
	Escribir Sin Saltar "La fecha ingresada es: " dia "/" mes "/" anio 
	Escribir ""
	Si dia = 01 y mes=01 Entonces
		dia=31
		mes=12
		anio=anio-1
		Escribir "El dia anterior fue: " dia "/" mes "/" anio
	SiNo
		Si dia = 1  y mes <> 1 Entonces
			segun mes Hacer
				02,04,06,08,09,11:
					dia=31
				03:
					dia=28
				05,07,10,12:
					dia=30
			FinSegun
			Escribir "El dia anterior fue: " dia "/" mes-1 "/" anio
		SiNo
			Escribir "El dia anterior fue: " dia-1 "/" mes "/" anio
		FinSi
		
	FinSi
	
	
FinSubProceso
