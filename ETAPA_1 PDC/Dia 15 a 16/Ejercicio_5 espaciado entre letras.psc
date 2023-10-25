//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.

Algoritmo Encuentro15_Ejercicio5
	
	Definir Text Como Cadena
	
	Escribir "Ingrese una frase"
	Leer Text
	
	
	Separate(Text)
	
	
FinAlgoritmo


SubProceso Separate(Text)
	
	Definir i, contaLetra Como Entero
	
	contaLetra = Longitud(text)
	
	Para i = 0 Hasta contaLetra Hacer
		
		Escribir Sin Saltar Subcadena(text, i,i) , " "
		
	FinPara
	
	
	
	
FinSubProceso
	