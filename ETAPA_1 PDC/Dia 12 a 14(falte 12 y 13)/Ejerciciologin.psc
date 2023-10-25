Algoritmo Ejerciciologin
//	Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
//	
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd". Ade-
//			más, la función calculara el número de intentos que se ha usado para loguearse, tenemos solo
//				
	//				3 intentos, si nos quedamos sin intentos la función devolverá Falso.
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
				Escribir"Ingrese contraseña; " Sin Saltar
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