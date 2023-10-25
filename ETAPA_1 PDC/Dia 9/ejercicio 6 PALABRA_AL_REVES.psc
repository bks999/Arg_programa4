Algoritmo PALABRA_AL_REVES
	Definir palabra Como caracter
	Definir i,Long Como Entero
	leer palabra
	long=Longitud(palabra)
	para i<-0 Hasta long Hacer
		Escribir Sin Saltar Subcadena(palabra,long-i,long-i)
		Escribir Sin Saltar " "
	FinPara
FinAlgoritmo
