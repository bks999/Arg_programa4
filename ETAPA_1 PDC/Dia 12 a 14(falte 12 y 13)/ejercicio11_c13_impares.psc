//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//	realizar el ejercicio.

Algoritmo ejercicio11_c13_impares
	Definir num1 Como real
	Escribir "Ingrese un numero"
	leer num1
	si num2(num1)=Verdadero
		Escribir "Son todos impares"
	SiNo
		Escribir "No son todos impares"
	FinSi
FinAlgoritmo

Funcion retorno<-num2(num1)
	Definir retorno Como Logico
	si num1<10 y num1>0
		si num1 mod 2 !=0
			retorno=Verdadero
		FinSi
	FinSi
	si num1>=10 y num1<100
		si trunc(num1/10) mod 2<>0
			si num1 mod 2!=0
				retorno=verdadero
			FinSi
		FinSi
	FinSi
	si num1<1000 y num1>=100
		si trunc(num1/100) mod 2 <> 0
			si trunc(num1/10) mod 2!=0
				si num1 mod 2 !=0
					retorno=Verdadero
				FinSi
			FinSi
		FinSi
	FinSi
	si num1<10000 y num1>=1000
		si trunc(num1/100) mod 2 !=0
			si trunc(num1/100) mod 2 <> 0
				si trunc(num1/10) mod 2<>0
					si num1 mod 2 <>0
						retorno=Verdadero
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	
FinFuncion
	