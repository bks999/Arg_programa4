
Funcion retorno <- capicua(num)
	Definir retorno como Logico
	Definir num1, num2 Como Entero
	num1 = trunc (num/100)
	num2 = num mod 10
	
	si num1==num2 Entonces
		retorno = Verdadero
	FinSi
	
FinFuncion

Algoritmo numero_capicua
	definir num Como entero
	
	escribir " ingresar un numero de tres cifras"
	leer num

	Escribir "El numero ingresado es capicua: " ,capicua(num)
	
	
FinAlgoritmo