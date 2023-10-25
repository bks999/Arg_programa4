Funcion retorno <- ContarLetra(frase,letra)
	Definir contador, retorno, cantidadDeLetras Como Entero
	cantidadDeLetras=Longitud(frase)
	contador = 0
	retorno = 0
	Mientras contador < Longitud(frase)
		Si Subcadena(frase, contador, contador) = letra
			retorno <- retorno + 1
		Fin Si
		contador <- contador + 1
	Fin Mientras
	retorno = retorno
Fin Funcion

Algoritmo Prueba
	
    Definir cantidad Como Entero
    Definir frase, letra Como Caracter
    Escribir "Ingrese la frase: "
    Leer frase
    Escribir "Ingrese la letra a buscar: "
    Leer letra
    cantidad <- ContarLetra(frase, letra)
    Escribir "La letra ", letra, " se encuentra ", cantidad, " veces en la frase."
Fin Algoritmo