//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20

Algoritmo ejercicio_extra_4
	Definir vector, i, def, reg, bue, exc Como Entero
	Dimension vector(100)
	def=0
	reg=0
	bue=0
	exc=0
	
	Para i=0 hasta 99 Hacer
		vector(i)=Aleatorio(0,20)
		si vector(i)>=0 y vector(i)<=5 Entonces
			def=def+1
		FinSi
		si vector(i)>=6 y vector(i)<=10 Entonces
			reg=reg+1
		FinSi
		si vector(i)>=11 y vector(i)<=15 Entonces
			bue=bue+1
		FinSi
		si vector(i)>=16 y vector(i)<=20 Entonces
			exc=exc+1
		FinSi
	FinPara
	
	Escribir "Alumnos con notas deficientes: " def
	Escribir "Alumnos con notas regulares: " reg
	Escribir "Alumnos con notas buenas: " bue
	Escribir "Alumnos con notas excelentes: " exc
	
	
FinAlgoritmo
