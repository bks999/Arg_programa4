Algoritmo Ejerciciologin
//	Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
//	
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd". Ade-
//			m�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos solo
//				
	//				3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.
	Definir us, cont Como Caracter
	us = "usuario1"
	cont = "asdasd"
	Escribir Login(us,cont)
FinAlgoritmo


Funcion retorno = Login(us,cont)
	Definir retorno Como Logico
	Definir i,contador Como Entero
	Definir usuario,clave Como Caracter
	Definir log Como Logico
	log = Falso
	contador = 1
	Mientras (contador <= 3)
		para i = 3 hasta 1 Hacer
			si log == Falso Entonces
				Escribir"Ingrese usuario: " Sin Saltar
				Leer usuario
				Escribir"Ingrese contrase�a; " Sin Saltar
				Leer clave
				si usuario==us y clave==cont Entonces
					Escribir "Ingreso Correcto en el intento: ",contador
					log = Verdadero
					retorno = Verdadero
				SiNo
					Escribir "Incorrecto le quedan ",i-1," intentos"
				FinSi
				
			FinSi
			contador = contador + 1
		FinPara
		
	Fin mientras
	
	
	
	
FinFuncion