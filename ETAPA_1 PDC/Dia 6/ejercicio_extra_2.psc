Algoritmo ejercicio_extra_2
	Definir num1, num2, num3 Como Entero
	Definir dia, mes, an Como Logico
	Escribir" Ingrese el dia"
	Leer num1
	Escribir "Ingrese el mes"
	Leer num2
	Escribir "Ingrese el año"
	Leer num3
	
	dia = num1 >= 1 y num1 <= 31 
	mes = num2 >= 1 y num2 <= 12
	an = num3 >= 1 y num3 <= 2023
	///dia,mes,an son variables logicas. Al escribir solo aparecera Verdadero o Falso///
	Si dia Entonces
		Si an Entonces
			Si mes Entonces
				Escribir "El dia ingresado es: "
				Segun num2 Hacer ///Segun solo acepta variables numericas o caracteres///
					1: 
						Escribir num1 " de enero de " num3
					2: 
						Escribir num1 " de febrero de " num3
					3: 
						Escribir num1 " de marzo de " num3
					4: 
						Escribir num1 " de abril de " num3
					5: 
						Escribir num1 " de mayo de " num3
					6: 
						Escribir num1 " de junio de " num3
					7: 
						Escribir num1 " de julio de " num3
					8: 
						Escribir num1 " de agosto de " num3
					9: 
						Escribir num1 " de septiembre de " num3
					10: 
						Escribir num1 " de octubre de " num3
					11: 
						Escribir num1 " de noviembre de " num3
					12: 
						Escribir num1 " de diciembre de " num3
				FinSegun
			SiNo
				Escribir "ERROR: mes"
			FinSi
		SiNo
			Escribir "ERROR: año"
		FinSi
	SiNo
		Escribir "ERROR: dia"
	FinSi

FinAlgoritmo
