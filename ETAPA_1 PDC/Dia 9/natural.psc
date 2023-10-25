Algoritmo  natural
	definir n, i, suma Como Entero
	suma=0
	escribir "ingrese un numero natural:"
	leer n
	si n>0 Entonces
		para i=1 Hasta n hacer 
			suma=suma+i
			
		FinPara
		escribir "la suma de todos los numeros que componen el " , n , " es de ", suma
	SiNo
		escribir "el numero no es natural"
	FinSi

	
	
FinAlgoritmo
