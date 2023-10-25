Algoritmo ejercicio_extra_1
	Definir nota1, nota2, nota3 Como Entero
	Definir promedio Como Real
	
	Escribir "Ingresa tus notas"
	Leer nota1
	Leer nota2
	Leer nota3
	
	promedio = (nota1+nota2+nota3)*100/30
	
	Si promedio >= 70 Entonces
		Escribir "APROBADO"
	SiNo
		Escribir "DESAPROBADO"
	FinSi
FinAlgoritmo
