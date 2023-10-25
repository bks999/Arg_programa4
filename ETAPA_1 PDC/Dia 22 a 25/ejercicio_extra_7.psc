Algoritmo ejercicio_extra_7
	Definir matriz, numC, numC1 , k como cadena
	Definir n,m, i ,j, aux , suma, suma1, numE, numE1 Como Entero
	m=8
	n=7
	numC=""
	numC1=""
	Dimension matriz(m,n)
	
	Para i=0 hasta m-1 Hacer
		Para j=0 hasta n-1 Hacer
			Si i=0 y j=0 Entonces //posicion(00)
				matriz(i,j)="       "
			FinSi
			Si i=0 Entonces //Titulos de dias
				Segun j Hacer
					1:
						matriz(i,j)="Lunes"
					2:
						matriz(i,j)="Martes"
					3:
						matriz(i,j)="Miercoles"
					4:
						matriz(i,j)="Jueves"
					5:
						matriz(i,j)="Viernes"
					6:
						matriz(i,j)="T. producto"
				FinSegun
			FinSi
			Si j=0 y i<>0 Entonces //titulos de productos en columna 0
				Segun i Hacer
					1:
						matriz(i,j)="Prod. 1"
					2:
						matriz(i,j)="Prod. 2"
					3:
						matriz(i,j)="Prod. 3"
					4:
						matriz(i,j)="Prod. 4"
					5:
						matriz(i,j)="Prod. 5"
					6:
						matriz(i,j)="T.semana"
					7:
						matriz(i,j)="P.mas vendido"
				FinSegun
			FinSi
		FinPara
	FinPara
	
	//Rellenar
	suma=0
	suma1=0
	aux=0
	Para j = 0 hasta n-1 Hacer
		Para i=0 Hasta m-1 Hacer
			si j>=1 y j<=5 y i>=1 y i<=5 entonces
				Escribir "Ingrese ventas del producto " j " [Dia " matriz(0,i) "]"
				Leer numC //variable del precio en tipo cadena
				matriz(i,j)=numC //se llena en la posicion matriz como cadena
				numE=ConvertirANumero(numC) //se convierte en numero para ser sumado
				suma=suma + numE //suma de los productos en un dia
				si numE>aux Entonces //logica para sacar la venta mas alta entre los productos del mismo dia
					aux=numE
					k=matriz(i,0) //variable para invocar luego el dia con la mayor venta
				FinSi
			FinSi
			si i=6 y j>=1 y j<=5 Entonces
				matriz(i,j)=convertiratexto(suma) //total de ventas en todo el dia
				suma=0
			FinSi
			
			si i=(m-1) y j<>0 y j<>(n-1) Entonces
				matriz(i,j)= k // producto mas vendido durante todo el dia
			FinSi
		FinPara
	FinPara
	suma1=0
	Para i=0 hasta m-1 Hacer
		Para j=0 Hasta n-1 Hacer
			Si j>=1 y j<=5 y i>=1 y i<=6 Entonces
				numE1=ConvertirANumero(matriz(i,j))
				suma1=suma1+numE1
				numC1=ConvertirATexto(suma1)
			SiNo
				si j=6 y i<>0 Entonces 
					matriz(i,j)=numC1
					suma1=0
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para i=0 hasta m-1 Hacer
		para j=0 hasta n-1 Hacer
			Si j=0 o i=0 o i=7 Entonces
				Escribir Sin Saltar "[" matriz(i,j) "]"
			SiNo
				Escribir Sin Saltar "[   " matriz(i,j) "  ]"
			FinSi
			
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
