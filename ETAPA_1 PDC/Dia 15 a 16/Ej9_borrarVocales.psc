///Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales re-
///petidas. Al final el procedimiento mostrará la frase final.
///Por ejemplo:
///Entrada: "Habia una vez un barco"
///Salida: "Habi un vez n brco"
///	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? que-
///		dan al no estar repetidas.

Algoritmo borrarVocales
	definir frase Como Caracter
	Escribir "Ingrese una frase"
	leer frase
	borrarvocal(frase)
	Escribir ""
	Escribir "La frase sin vocales repetidas es:"
	Escribir ""
	esperar 2 Segundos
	escribir frase
FinAlgoritmo

SubProceso borrarvocal(frase Por Referencia)
	Definir frase2 Como Caracter
	Definir i, a, e, j, p, u Como Entero
	a=0
	e=0
	j=0
	p=0
	u=0
	frase2=""
	para i= 0 hasta longitud(frase) con paso 1 hacer
		Segun subcadena(frase,i,i) Hacer
			"a":
				a=a+1
				si a>1 Entonces
					frase2=Concatenar(frase2,"")
				sino 
					frase2=Concatenar(frase2,"a")
				FinSi
				
			"e", "E": 
				e=e+1
				si e>1 Entonces
					frase2=Concatenar(frase2,"")
				sino 
					frase2=Concatenar(frase2,"e")
				FinSi
			"i", "I": 
				j=j+1
				si j>1 Entonces
					frase2=Concatenar(frase2,"")
				sino 
					frase2=Concatenar(frase2,"i")
				FinSi
			"o", "O": 
				p=p+1
				si p>1 Entonces
					frase2=Concatenar(frase2,"")
				sino 
					frase2=Concatenar(frase2,"o")
				FinSi
			"u", "U": 
				u=u+1
				si u>1 Entonces
					frase2=Concatenar(frase2,"")
				sino 
					frase2=Concatenar(frase2,"u")
				FinSi
			De Otro Modo:
				frase2=Concatenar(frase2,subcadena(frase,i,i))
		Fin Segun
	finpara
	frase=frase2
FinSubProceso
