Algoritmo sin_titulo
	
	Menu()
	
FinAlgoritmo

SubProceso Menu()
	
	llenarMatriz() 
	sumarMatriz()
	multPos() /// MULTIPLICAR POSICIÓN A ELECCIÓN ///
	multMatriz() /// MULTIPLICAR IGUALES POSICIONES DE AMBAS MATRICES ///
	diagonalesMatriz()
	
	
FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso llenarMatriz()
	Definir matriz1,matriz2,matriz3,i,j,k,c Como Entero
	Definir cadena1,cadena2 Como Caracter
	
	c = 0
	cadena1 = "123456789"
	cadena2 = "987654321"
	
	Dimension matriz1(3,3,3)
	
	inicializarMatriz(matriz1)
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			matriz1(i,j,0) = ConvertirANumero(Subcadena(cadena1,c,c))
			matriz1(i,j,1) = ConvertirANumero(Subcadena(cadena2,c,c))
			c = c + 1
		FinPara
	FinPara
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
				Escribir sin saltar "(" matriz1(i,j,0) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,1) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,2) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
funcion inicializarMatriz(matriz1)
	
	definir i, j, k Como Entero
	
	para i<- 0 hasta 2 Hacer
		para j <- 0 hasta 2 Hacer
			para k <- 0 hasta 2 Hacer
				matriz1(i,j,k)=0
			FinPara
		FinPara
	FinPara
	
FinFuncion
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso sumarMatriz()
		Definir matriz1,matriz2,matriz3,i,j,k,c Como Entero
		Definir cadena1,cadena2 Como Caracter
		
		c = 0
		cadena1 = "123456789"
		cadena2 = "987654321"
		
		Dimension matriz1(3,3,3)
		
		inicializarMatriz(matriz1)
		
		Para i = 0 Hasta 2
			Para j = 0 Hasta 2
				matriz1(i,j,0) = ConvertirANumero(Subcadena(cadena1,c,c))
				matriz1(i,j,1) = ConvertirANumero(Subcadena(cadena2,c,c))
				c = c + 1
			FinPara
		FinPara
		
		Para i = 0 Hasta 2
			Para j = 0 Hasta 2
				matriz1(i,j,2) = matriz1(i,j,1) + matriz1(i,j,0)
			FinPara
		FinPara
		
		Para i = 0 Hasta 2
			Para j = 0 Hasta 2
				Escribir sin saltar "(" matriz1(i,j,0) ") "
			FinPara
			Escribir ""
		FinPara
		Escribir ""
		
		Para i = 0 Hasta 2
			Para j = 0 Hasta 2
				Escribir sin saltar "(" matriz1(i,j,1) ") "
			FinPara
			Escribir ""
		FinPara
		Escribir ""
		
		Para i = 0 Hasta 2
			Para j = 0 Hasta 2
				Escribir sin saltar "(" matriz1(i,j,2) ") "
			FinPara
			Escribir ""
		FinPara
		Escribir ""
		
FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso multPos()  /// MULTIPLICAR POSICIÓN A ELECCIÓN ///
	Definir matriz1,matriz2,matriz3,i,j,k,c,pos1,pos2 Como Entero
	Definir cadena1,cadena2 Como Caracter
	
	c = 0
	cadena1 = "123456789"
	cadena2 = "987654321"
	
	Dimension matriz1(3,3,3)
	
	inicializarMatriz(matriz1)
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			matriz1(i,j,0) = ConvertirANumero(Subcadena(cadena1,c,c))
			matriz1(i,j,1) = ConvertirANumero(Subcadena(cadena2,c,c))
			c = c + 1
		FinPara
	FinPara
	
	Escribir "Ingrese la posición que desea multiplicar:"
	Leer pos1,pos2
	
	matriz1(pos1,pos2,2) = matriz1(pos1,pos2,1) * matriz1(pos1,pos2,0)

	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,0) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,1) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,2) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso multMatriz()
Definir matriz1,matriz2,matriz3,i,j,k,c Como Entero
Definir cadena1,cadena2 Como Caracter

c = 0
cadena1 = "123456789"
cadena2 = "222222222"

Dimension matriz1(3,3,3)

inicializarMatriz(matriz1)

Para i = 0 Hasta 2
	Para j = 0 Hasta 2
		matriz1(i,j,0) = ConvertirANumero(Subcadena(cadena1,c,c))
		matriz1(i,j,1) = ConvertirANumero(Subcadena(cadena2,c,c))
		c = c + 1
	FinPara
FinPara

Para i = 0 Hasta 2
	Para j = 0 Hasta 2
		matriz1(i,j,2) = matriz1(i,j,1) * matriz1(i,j,0)
	FinPara
FinPara

Para i = 0 Hasta 2
	Para j = 0 Hasta 2
		Escribir sin saltar "(" matriz1(i,j,0) ") "
	FinPara
	Escribir ""
FinPara
Escribir ""

Para i = 0 Hasta 2
	Para j = 0 Hasta 2
		Escribir sin saltar "(" matriz1(i,j,1) ") "
	FinPara
	Escribir ""
FinPara
Escribir ""

Para i = 0 Hasta 2
	Para j = 0 Hasta 2
		Escribir sin saltar "(" matriz1(i,j,2) ") "
	FinPara
	Escribir ""
FinPara
Escribir ""

FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso diagonalesMatriz()
	Definir matriz1,matriz2,matriz3,i,j,k,c,diag1,diag2,diag3,diag4 Como Entero
	Definir cadena1,cadena2 Como Caracter
	
	c = 0
	cadena1 = "123456789"
	cadena2 = "222222222"
	
	Dimension matriz1(3,3,3)
	
	inicializarMatriz(matriz1)
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			matriz1(i,j,0) = ConvertirANumero(Subcadena(cadena1,c,c))
			matriz1(i,j,1) = ConvertirANumero(Subcadena(cadena2,c,c))
			c = c + 1
		FinPara
	FinPara
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			matriz1(i,j,2) = matriz1(i,j,1) * matriz1(i,j,0)
		FinPara
	FinPara
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,0) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,1) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	Para i = 0 Hasta 2
		Para j = 0 Hasta 2
			Escribir sin saltar "(" matriz1(i,j,2) ") "
		FinPara
		Escribir ""
	FinPara
	Escribir ""
	
	diag1 = matriz1(0,0,0) * matriz1(1,1,1) * matriz1(2,2,2)
	
	Escribir "Diagonal 1:  [" matriz1(0,0,0) "] * [" matriz1(1,1,1) "] * [" matriz1(2,2,2) "] = " diag1 /// COMIENZA ARRIBA A LA IZQUIERDA /// 3D2 INTEGRADOR
	
	diag2 = matriz1(0,2,0) * matriz1(1,1,1) * matriz1(2,0,2)
	
	Escribir "Diagonal 2:  [" matriz1(0,2,0) "] * [" matriz1(1,1,1) "] * [" matriz1(2,0,2) "] = " diag2 /// COMIENZA ARRIBA A LA DERECHA /// 3D1 INTEGRADOR
	
	diag3 = matriz1(2,0,0) * matriz1(1,1,1) * matriz1(0,2,2)
	
	Escribir "Diagonal 3: [" matriz1(2,0,0) "] * [" matriz1(1,1,1) "] * [" matriz1(0,2,2) "] = " diag3 /// COMIENZA ABAJO A LA IZQUIERDA
	
	diag4 = matriz1(2,2,0) * matriz1(1,1,1) * matriz1(0,0,2) 
	
	Escribir "Diagonal 4: [" matriz1(2,2,0) "] * [" matriz1(1,1,1) "] * [" matriz1(0,0,2) "] = " diag4 /// COMIENZA ABAJO A LA DERECHA
FinSubProceso
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////