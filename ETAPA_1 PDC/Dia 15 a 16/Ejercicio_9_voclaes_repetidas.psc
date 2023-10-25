//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales re-
//petidas. Al final el procedimiento mostrará la frase final.
//
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//	
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? que-
//		dan al no estar repetidas.


Algoritmo Ejercicio_9_vocales_repetidas
	Definir frase como cadena
	Escribir "Ingrese una frase"
	Leer frase
	
	BorrarVocales(frase)
	
FinAlgoritmo

SubProceso BorrarVocales(frase)
	Definir long, i, contA, contE, contI, contO, contU Como Entero
	long = Longitud(frase)
	contA=0
	contE=0
	contI=0
	contO=0
	contU=0
	
	Para i=0 hasta long Hacer
		si Subcadena(frase,i,i)="a" o Subcadena(frase,i,i)="A" Entonces
			contA=contA+1
		SiNo
			si Subcadena(frase,i,i)="e" O Subcadena(frase,i,i)="E" Entonces
				contE=contE+1
			SiNo
				si Subcadena(frase,i,i)="i" O Subcadena(frase,i,i)="I" Entonces
					contI=contI+1
				SiNo
					si Subcadena(frase,i,i)="o" O Subcadena(frase,i,i)="O" Entonces
						contO=contO+1
					SiNo
						si Subcadena(frase,i,i)="u" O Subcadena(frase,i,i)="U" Entonces
							contU=contU+1
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	
	para i=0 hasta long Hacer
		Si Subcadena(frase,i,i) <> "a" Y Subcadena(frase,i,i)<>"A"  y Subcadena(frase,i,i) <> "e" Y Subcadena(frase,i,i)<>"E" Y Subcadena(frase,i,i)<>"I" y Subcadena(frase,i,i) <> "i" y Subcadena(frase,i,i) <> "o" y Subcadena(frase,i,i)<>"O" Y Subcadena(frase,i,i) <> "u" Y Subcadena(frase,i,i)<>"U" Entonces
			Escribir Sin Saltar Subcadena(frase,i,i)
			
		SiNo
			Segun Subcadena(frase,i,i) Hacer
				"a","A":
					Si contA>=2 Entonces
						Escribir Sin Saltar ""
					SiNo
						Escribir Sin Saltar Subcadena(frase,i,i)
					FinSi
				"e","E":
					Si contE>=2 Entonces
						Escribir Sin Saltar ""
					SiNo
						Escribir Sin Saltar Subcadena(frase,i,i)
					FinSi
				"i","I":
					Si contI>=2 Entonces
						Escribir Sin Saltar ""
					SiNo
						Escribir Sin Saltar Subcadena(frase,i,i)
					FinSi
				"o","O":
					Si contO>=2 Entonces
						Escribir Sin Saltar ""
					SiNo
						Escribir Sin Saltar Subcadena(frase,i,i)
					FinSi
				"u","U":
					Si contU>=2 Entonces
						Escribir Sin Saltar ""
					SiNo
						Escribir Sin Saltar Subcadena(frase,i,i)
					FinSi
			FinSegun
		FinSi
	FinPara
	Escribir ""
	
FinSubProceso
	