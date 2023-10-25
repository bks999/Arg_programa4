Funcion retorno <- Paridad ( num Por Referencia )
	Definir retorno Como Numero
	retorno = num mod 2
Fin Funcion

Algoritmo deteccion_error
	Definir num Como Numero
	Leer num
	

	Si Paridad(num) = 0 Entonces
		Escribir num " es par"
	SiNo
		Escribir num " es impar"
	FinSi
FinAlgoritmo
	