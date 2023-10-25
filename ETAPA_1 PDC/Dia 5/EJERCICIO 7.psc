Algoritmo EJERCICIO_SUBCADENA
	Definir palFrase como Cadena
	Definir num Como Entero
	
	Escribir "Ingrese una palabra o frase"
	Leer palFrase
	
	num = Longitud(palFrase)
	//utilizo longitud() para contar cuantos caracteres tiene la frase//
	//num=sera la posicion de la ultima letra, pero restando //
	//porque las posiciones de las letras comienzan desde 0//
	Si Subcadena(palFrase, 0, 0)= subcadena(palFrase,num-1,num-1) Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
