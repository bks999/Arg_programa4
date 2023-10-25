///Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.
	
Algoritmo si_no_capicua
	Definir num, verTresCifras Como Entero
	Escribir "Ingrese un numero de tres cifras"
	Leer num
	verTresCifras = trunc(num/100)
	
	Si verTresCifras >=1 Y verTresCifras < 10 Entonces
		Escribir "Has ingresado un numero de tres cifras con exito!"
		si trunc(num/100) = (num mod 100) mod 10 Entonces
			Escribir num " es un numero capicua"
		SiNo
			Escribir num " no es un numero capicua"
		FinSi
	SiNo
		Escribir "No has ingresado un numero de tres cifras. Vuelve a intentarlo"
		Leer num
		Si verTresCifras >=1 Y verTresCifras < 10 Entonces
			Escribir "Has ingresado un numero de tres cifras con exito!"
			si trunc(num/100) = (num mod 100) mod 10 Entonces
				Escribir num " es un numero capicua"
			SiNo
				Escribir num " no es un numero capicua"
			FinSi
		FinSi
	FinSi
	

FinAlgoritmo
