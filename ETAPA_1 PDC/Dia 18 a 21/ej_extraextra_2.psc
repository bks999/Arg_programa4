//2. Implementar una funci�n que permita obtener el valor absoluto de
//un n�mero y otra que obtenga la ra�z cuadrada. Para ello utilice 
//las funciones abs() y rc() de PseInt.

Algoritmo ej_extraextra_2
	Definir num Como Entero
	Escribir "Ingrese un numero"
	Leer num
	Escribir "Valor absoluto:"
	Escribir valorAbsoluto(num)
	Escribir "Raiz cuadrada: "
	Escribir raizCuad(num)
FinAlgoritmo

Funcion retorno <- valorAbsoluto(num)
	Definir retorno Como Entero
	retorno=abs(num)
FinFuncion

Funcion retorno <- raizCuad(num)
	Definir retorno, aux Como Entero
	
	retorno=rc(valorAbsoluto(num))
FinFuncion