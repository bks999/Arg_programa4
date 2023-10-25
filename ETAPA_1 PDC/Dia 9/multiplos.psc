//Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
//comprendidos entre 1 y 100.

Algoritmo multiplos
	definir num2, num3, i Como Entero

	Para i=1 Hasta 100
		num2=i*2
		num3=i*3
		si num2 <= 100 Entonces
			escribir "los multiplos de dos son : " , num2
		FinSi
		si num3<= 100 Entonces
			escribir "los multiplos de tres son : " , num3
		FinSi
	FinPara
FinAlgoritmo
