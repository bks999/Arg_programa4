//1. Implementar una funci�n que permita obtener un n�mero entero aleatorio comprendido 
//entre dos l�mites que introduciremos por teclado. El n�mero obtenido se debe mostrar por pantalla.

Algoritmo ej_extraextra_1
	Definir n, m Como Entero
	Escribir "Ingrese el valor de los dos limites para obtener un numero entero"
	Leer n,m
	
	Escribir numAleat(n,m)
FinAlgoritmo

Funcion retorno <- numAleat(n,m)
	Definir retorno Como Entero
	retorno=Aleatorio(n,m)
FinFuncion
