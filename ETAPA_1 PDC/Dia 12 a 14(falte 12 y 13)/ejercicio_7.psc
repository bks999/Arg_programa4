//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
//
//entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con de-
//cimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).

Funcion retorno <- convertCadNum(numC)
	Definir retorno Como Entero
	retorno = ConvertirANumero(numC)
FinFuncion
Algoritmo ejercicio_7
	Definir numC Como Caracter
	Definir numN Como Entero
	Escribir "Ingrese un numero entero de tres digitos"
	Leer numC
	
	Si Longitud(numC)>0 y Longitud(numC)<=3 Entonces
		numN = convertCadNum(numC)
		Escribir "Has ingresado correctamente: " numN
	SiNo
		Escribir "Has ingresado un numero incorrecto"
	FinSi
FinAlgoritmo
