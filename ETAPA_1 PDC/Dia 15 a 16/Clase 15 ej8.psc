//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha repre-
//sentada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede asumir que
//dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para los valores
//dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo sin_titulo
	Definir dia, mes, anio Como entero
	Escribir "Ingrese una fecha"
	Escribir "Dia:"
	leer dia
	Escribir "Mes: "
	leer mes
	Escribir "Año:"
	leer anio
	
	diaAnterior(dia,mes,anio)
	
FinAlgoritmo

SubProceso diaAnterior(dia,mes,anio)
	
	Definir i, bisiesto, bisiesto2 como entero
	Definir febrero Como Logico
	i=0
	dia = dia-1
	febrero = Falso
	bisiesto = anio mod(4)
	
	bisiesto2 = anio mod(100)
	
	si (bisiesto = 0) y (bisiesto2 <> 0) Entonces
		febrero = verdadero
	FinSi
	
	si dia = 0 Entonces
		mes = mes - 1
		si mes = 0 Entonces
			
			mes = 12
			anio = anio - 1
			
		FinSi
		si	mes = 2 y febrero = Verdadero Entonces
			dia = 29
		FinSi
		si mes = 1 o mes = 3 o mes = 5 o mes = 7 o mes = 8 o mes = 10 o mes = 12 Entonces
			
			dia = 31
			
		FinSi
		si mes = 2 y febrero = Falso
			
			dia = 28
			
		FinSi
		si mes = 4 o mes = 6 o mes = 9 o mes = 11 Entonces
			
			dia = 30
			
		FinSi
	FinSi
	
	Escribir "Su día es: ",dia, " .Su mes es: ",mes," .Su año es: ",anio
	
FinSubProceso
	