//El promedio de los trabajos prácticos de un curso se calcula en base a cuatro notas de las
//cuales se elimina la nota menor y se promedian las tres notas más altas. Escriba un
//programa que determine cuál es la nota eliminada y el promedio de los trabajos prácticos
//de un estudiante.


Algoritmo ejercicio_extra_7
	Definir nota1,nota2,nota3,nota4,aux, cont, calFinal Como real
	Escribir "Ingrese sus 4 notas de trabajos practicos"
	Leer nota1,nota2,nota3,nota4
	calFinal=nota1+nota2+nota3+nota4
	Si nota1<nota2 Entonces
		aux=nota1
	SiNo 
		si nota2<nota3 Entonces
			aux=nota2
		SiNo
			si nota3<nota4 Entonces
				aux=nota3
			SiNo
				si nota4<nota1 Entonces
					aux=nota4
				FinSi
			FinSi
		FinSi
	FinSi
	
	calFinal=(calFinal-aux)/3
	Escribir "La nota eliminada fue: " aux
	Escribir "La nota final es de: " calFinal
	
FinAlgoritmo
