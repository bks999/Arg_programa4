Algoritmo dia18_ej4
	Definir N, vectorA, vectorB, vectorC, VectorD, subindice, i como entero
	Definir select, vector Como Caracter
	Definir log Como Logico
	N=Aleatorio(0,100)
	Dimension vectorA(N)
	Dimension vectorB(N)
	Dimension vectorC(N)
	Dimension vectorD(N)
REPETIR	
	Escribir "*******************************************************"
	Escribir "                          MENU                         "
	Escribir "*******************************************************"
	Escribir "++ A ++              Llenar Vector A"
	Escribir "++ B ++              Llenar Vector B"
	Escribir "++ C ++ Llenar Vector C - suma de los vectores A y B"
	Escribir "++ D ++ Llenar Vector C - resta de los vectores A y B"
	Escribir "++ E ++           Mostrar vector A,B o C"
	Escribir "++ F ++                   Salir"
	Escribir "*******************************************************"
	Escribir "Ingrese una opcion"
	
	Leer select
	select=Mayusculas(select)
	Segun select hacer
		"A":
			Para i=0 hasta N-1
				vectorA(i)=Aleatorio(-100,100)
			FinPara
			
			Para i=0 hasta N-1
				Escribir Sin Saltar "[" vectorA(i) "] "
			FinPara
		"B":
			Para i=0 hasta N-1
				vectorB(i)=Aleatorio(-100,100)
			FinPara
			
			Para i=0 hasta N-1
				Escribir Sin Saltar "[" vectorB(i) "] "
			FinPara
		"C":
			log=Verdadero
			Para i=0 hasta N-1
				vectorC[i]=vectorA[i]+vectorB[i]
			FinPara
			
			Para i=0 hasta N-1
				Escribir Sin Saltar "[" vectorC(i) "] "
			FinPara
		"D":
			log=Falso
			Para i=0 hasta N-1
				vectorD[i]=vectorA[i]-vectorB[i]
			FinPara
			
			Para i=0 hasta N-1
				Escribir Sin Saltar "[" vectorD(i) "] "
			FinPara
		"E":
			Escribir "Ingrese el vector que desea mostrar"
			Escribir " A: vector A"
			Escribir " B: vector B"
			Escribir " C: vector C"
			Leer vector
			Segun Mayusculas(vector) Hacer
				"A":
					Escribir "Ingrese el subindice del vector que desee imprimir"
					leer subindice
					Escribir vectorA(subindice)
				"B":
					Escribir "Ingrese el subindice del vector que desee imprimir"
					leer subindice
					Escribir vectorB(subindice)
				"C":
					Escribir "Ingrese el subindice del vector que desee imprimir"
					leer subindice
					Si log=Verdadero Entonces
						Escribir vectorC(subindice)
					SiNo
						Escribir vectorD(subindice)
					FinSi
			FinSegun
		"F":
			Escribir "Fin de proceso"
	FinSegun
MIENTRAS QUE select<>"F"
FinAlgoritmo