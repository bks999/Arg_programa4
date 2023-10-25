//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5

Algoritmo ejercicio_extra_5
	Definir matriz, m, i, j, A, B, suma Como Entero
	Escribir "Ingrese la cantidad de filas en la matriz"
	Leer m
	Dimension matriz(m,3)
	Escribir ""
	suma=0
	
	Para i=0 Hasta m-1 Hacer
		Escribir "Ingrese dos numeros para la fila " i " para mostrar su suma en la tercera columna"
		Para j=0 Hasta 2 Hacer
			Si j=0 Entonces
				Leer matriz(i,j)
				suma = suma + matriz(i,j)
				A=matriz(i,j)
			SiNo
				si j=1 Entonces
					Leer matriz(i,j)
					suma = suma + matriz(i,j)
					B=matriz(i,j)
				FinSi
			FinSi
			Si j=2 Entonces
				matriz(i,j)=suma
				suma=0
				A=0
				B=0
			FinSi
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i=0 Hasta m-1 Hacer
		Para j=0 Hasta 2 Hacer
			Segun j Hacer
				0:
					Escribir Sin Saltar matriz(i,j) " + "
				1:
					Escribir Sin Saltar matriz(i,j) " = "			
				2:
					Escribir Sin Saltar matriz(i,j)
			FinSegun
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
