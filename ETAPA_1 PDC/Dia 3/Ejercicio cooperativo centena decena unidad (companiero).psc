Algoritmo descomposicion_de_un_numero
	definir num ,unidadDelNum , decenaDelNum , centenaDelNum Como Entero
	definir aux1 como real 

	
	escribir"Ingrese un numero de tres cifras"
	leer num
	centenaDelNum<- trunc(num *10^(-2))   
	aux1<-trunc(num*10^(-1))
	decenaDelNum<- aux1%10
	unidadDelNum<- num % aux1
	
	
	
	escribir"centena=",centenaDelNum
	escribir"decena=",decenaDelNum
	escribir"unidad=",unidadDelNum
	
FinAlgoritmo
