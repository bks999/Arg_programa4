//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina ofre-
//ciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas: Norte,
//		Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas estadísticas
//		sobre el comportamiento de sus representantes en cada zona. Se desea hacer un programa
//	que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.

Algoritmo ejercicio_extra_8
	Definir f,c,i,j, num, sum, sum1 Como Entero
	Definir nescafe, venta, tVenta, tVenta1 como cadena
	f=7
	c=6
	num=0
	venta=""
	sum=0
	sum1=0
	tVenta=""
	tVenta1=""
	
	Dimension nescafe(f,c)
	
	//llenar los titulos
	
	Para j=0 hasta c-1 Hacer
		para i=0 hasta f-1 Hacer
			si i=0 y j=0 Entonces
				nescafe(i,j)="         "
			SiNo
				si j=0 Entonces
					Segun i Hacer
						1:
							nescafe(i,j)="  NORTE  "
						2:
							nescafe(i,j)="   SUR   "
						3:
							nescafe(i,j)="	  ESTE   "
						4:
							nescafe(i,j)="  OESTE  "
						5:
							nescafe(i,j)="  CENTRO "
						6:
							nescafe(i,j)="  TOTAL  "
							
					FinSegun
				FinSi
				Si i=0 Entonces
					Segun j Hacer
						1:
							nescafe(i,j)=ConvertirATexto(1)
						2:
							nescafe(i,j)=ConvertirATexto(2)
						3:
							nescafe(i,j)=ConvertirATexto(3)
						4:
							nescafe(i,j)=ConvertirATexto(4)
						5:
							nescafe(i,j)="TOTAL"
					FinSegun
				FinSi
			FinSi
			si i>=1 y i<=5 y j>=1 y j<=4 Entonces
				Escribir "Ingrese ventas del vendedor " j " en zona " nescafe(i,0)
				Leer num
				venta=ConvertirATexto(num)
				nescafe(i,j)=venta
				sum=sum+num
			FinSi
			si i=6 y j>=1 y j<=4 Entonces //Total de ventas por cada vendedor
				tVenta=ConvertirATexto(sum)
				nescafe(i,j)=tVenta
				sum=0
			FinSi
		FinPara
	FinPara
	
	Para i=0 hasta f-1 Hacer
		para j=0 hasta c-1 Hacer
			si j>=1 y j<=4 y i<>0 Entonces
				sum1=sum1+ConvertirANumero(nescafe(i,j))
			SiNo
				si j=5 y i<>0 Entonces
					tVenta1=ConvertirATexto(sum1)
					nescafe(i,j)=tVenta1
					sum1=0
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para i=0 hasta f-1 Hacer
		para j=0 hasta c-1 Hacer
			Escribir Sin Saltar "[" nescafe(i,j) "]"
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
	