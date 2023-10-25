//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//			
//		El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//			
//			de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además, debe-
//			mos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o
//				
//				no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.

Algoritmo jornadas
	definir nombre, turno, dia, festivo Como Caracter
	definir horas como entero 
	
	Escribir  "ingrese el nombre del trabajador" 
	leer nombre 
	Escribir  "ingrese en que turno trabaja, si es diurno o nocturno" 
	leer turno 
	Escribir "Ingrese la cantidad de horas trabajadas"
	leer horas 
	Escribir "ingrese el dia trabajado "
	leer dia 
	Escribir "Ingrese si el  dia es  festivo si o no "
	leer festivo
	escribir "el jornal diario sera " salario(turno,horas,festivo)
	
FinAlgoritmo

Funcion sueldo <- salario(turno,horas,festivo)
	definir sueldo Como Entero
	si turno="diurno" Entonces
		sueldo=90*horas
		si festivo= "si" Entonces
			sueldo = sueldo + (sueldo*0.10)
		FinSi
	SiNo
		si turno= "nocturno" Entonces
			sueldo=125* horas
			si festivo= "si" Entonces
				sueldo = sueldo + (sueldo*0.15)
			FinSi	
		FinSi
		
	FinSi
		FinFuncion
	