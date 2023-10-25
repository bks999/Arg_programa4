//Crea una aplicación que nos pida un día de la semana y que nos diga si es un dia laboral o
//no.

Algoritmo EJERCICIO_5
	Definir dia Como Caracter
	Escribir "Ingrese un dia de la semana"
	Leer dia
	
	si Mayusculas(dia)="SABADO" o Mayusculas(dia)="DOMINGO" Entonces
		Escribir "El dia ingresado es un dia no laboral"
	SiNo
		Escribir "El dia ingresado es un dia laboral"
	FinSi
FinAlgoritmo
