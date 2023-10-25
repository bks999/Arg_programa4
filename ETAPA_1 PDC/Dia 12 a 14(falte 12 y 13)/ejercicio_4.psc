Funcion retorno <- ContarLetra(frase,letra)
	Definir contador, retorno, CantLetrasFrase Como Entero
	CantLetrasFrase = Longitud(frase)
	contador = 0
	retorno = 0
	Mientras contador < CantLetrasFrase Hacer
		Si Subcadena(frase, contador, contador) = letra Entonces
			retorno = retorno +1
		FinSi
		contador = contador +1
	FinMientras
FinFuncion

Algoritmo ejercicio_4
	Definir frase, letra Como Cadena
	Definir repeticion Como Entero
	Escribir "Ingrese una frase"
	Leer frase
	Escribir "Ingrese una letra para buscar en la frase ingresada"
	Leer letra
	
	repeticion = ContarLetra(frase, letra)
	Escribir "La letra " letra " se repite " repeticion " en la frase"
	
	
	
FinAlgoritmo
