Algoritmo Matrices
	menu()
	
FinAlgoritmo

SubProceso menu ()
/// MENU PRINCIPAL
	
	Definir eleccion, optar como entero;
	Definir salir Como Caracter;
	
	Hacer
		Escribir "|=============================================================|"
		Escribir "|------------- MENU MATRICES - PROGRAMAS UTILES --------------|" 
		Escribir "|=============================================================|"
		Escribir "| Seleccione una opcion:                                      |"
		Escribir "| ---------------------                                       |"
		Escribir "| 1. Llenar Matriz en forma horizontal de arriba hacia abajo  |"
		Escribir "| 2. Llenar Matriz en forma vertical de arriba hacia abajo    |"
		Escribir "| 3. Llenar Matriz en forma horizontal de abajo hacia arriba  |"
		Escribir "| 4. Llenar Matriz en forma vertical de abajo hacia arriba    |"
		Escribir "| 5. Sumar Matrices                                           |"
		Escribir "| 6. Multiplicar Matrices                                     |"
		Escribir "| 7. Diagonales Matriz                                        |"
		Escribir "| 8. Salir                                                    |"
		Escribir "| ============================================================|"
		Leer eleccion;
		Segun eleccion Hacer
			1: llenarMatrizh()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla
			2: llenarMatrizv()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla
			3: llenarMatrizhA()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla
			4: llenarMatrizv1()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla
			5: sumarMatriz()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla
			6:	multiplicaMatriz()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla				
			7:	diagonales()
				Escribir sin saltar "Intro para continuar " ;
				Leer optar;
				Limpiar Pantalla				
			8:
				Escribir "Seguro desea salir?? "
				Escribir "S/confirmar, N/ continuar"
				Leer salir
				Si Mayusculas(salir)  = "N" Entonces;
					Limpiar Pantalla
					menu()
				SiNo 
					Escribir "Fin Menu Matrices...";
				FinSi
				
			De Otro Modo:
				Escribir "Ingrese una opcion valida ";
		Fin Segun
		
	Mientras Que eleccion <> 8
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso llenarMatrizh()
/// LLENAR MATRIZ EN FORMA HORIZONTAL DE ARRIBA HACIA ABAJO
Definir cadena1 como caracter
Definir matriz, i, j, cont como Entero
Dimension matriz(3,3)
cadena1= "123456789"
cont=0
Para i<-0 hasta 2 Con Paso 1 Hacer
	Para j <- 0 hasta 2 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1	
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Llenar matriz en forma horizontal de arriba hacia abajo "
Escribir "i<-0 a n-1 ; j<-0 a n-1"

Para i<-0 hasta 2 Hacer
	Para j<- 0 hasta 2 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir "============================================================"
Esperar Tecla

/// Se puede usar la salida de impresion de otra forma para que vaya de abajo hacia arriba
Escribir "Cambiando la salida de impresion i<-n-1 a 0 ; j<-0 a n-1 , para que vaya de abajo hacia arriba"
Para i<-2 hasta 0 Hacer
	Para j<- 0 hasta 2 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir "============================================================"
FinSubProceso


//////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso llenarMatrizv()
/// LLENAR MATRIZ EN FORMA VERTICAL DE ARRIBA HACIA ABAJO
Definir cadena1 como caracter
Definir matriz, i, j, cont como Entero
Dimension matriz(3,3)
cadena1= "123456789"
cont=0
Para j<-0 hasta 2 Con Paso 1 Hacer
	Para i <- 0 hasta 2 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1	
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Llenar matriz en forma vertical de arriba hacia abajo "
Escribir "j<-0 a n-1 ; i<-0 a n-1"

Para i<-0 hasta 2 Hacer
	Para j<- 0 hasta 2 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir "============================================================"
Esperar Tecla

/// Se puede usar la salida de impresion de otra forma para que vaya de abajo hacia arriba
Escribir "Cambiando la salida de impresion i<-n-1 a 0 ; j<-0 a n-1 , para que vaya de abajo hacia arriba"
Para i<-2 hasta 0 Con Paso -1 Hacer
	Para j<- 0 hasta 2 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir "============================================================"
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso llenarMatrizhA()
/// LLENAR MATRIZ EN FORMA HORIZONTAL DESDE ABAJO HACIA ARRIBA 
Definir cadena1 como caracter
Definir matriz, i, j, cont como Entero
Dimension matriz(3,3)
cadena1= "123456789"
cont=0
Para i<-2 hasta 0 Con Paso -1 Hacer
	Para j <- 0 hasta 2 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1	
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Llenar matriz en forma horizontal de abajo hacia arriba"
Escribir "i<-n-1 a 0 ; j<-0 a n-1"

Escribir "Desde izquierda a derecha"
Escribir " "
Para i<-0 hasta 2 Hacer
	Para j<- 0 hasta 2 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "

Escribir "Desde derecha a izquierda"
Escribir " "
Para i<-2 Hasta 0 Con Paso -1 Hacer
	Para j<-2 hasta 0 Con Paso -1 Hacer
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir "============================================================"
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso llenarMatrizv1()
/// LLENAR MATRIZ EN FORMA VERTICAL DE ABAJO HACIA ARRIBA
Definir cadena1 como caracter
Definir matriz, i, j, cont como Entero
Dimension matriz(3,3)
cadena1= "123456789"
cont=0
Para j<-0 hasta 2 Con Paso 1 Hacer
	Para i<-2 hasta 0 Con Paso -1 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1	
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Llenar matriz en forma vertical de abajo hacia arriba "
Escribir "j<-n-1 a 0 ; i<-n-1 a 0"

Escribir "De izquierda a derecha"
Escribir " "
Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer					
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir ""

Escribir "De derecha a izquierda"
Escribir " "
Esperar Tecla
/// Desde la izq a derecha
Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<-2 hasta 0 Con Paso -1 Hacer					
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara

Escribir "============================================================"
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso sumarMatriz()
/// SUMAR DOS MATRICES
Definir cadena1, cadena2 como caracter
Definir matriz,matriz1,matrizs, i, j, cont,cont1 como Entero
Dimension matriz(3,3),matriz1(3,3),matrizs(3,3)
cadena1= "123456789"
cadena2= "987654321"

cont=0
cont1=0

Para i<-0 hasta 2 Con Paso 1 Hacer
	Para j<-0 hasta 2 Con Paso 1 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1
		matriz1(i,j)=convertiranumero(subcadena(cadena2,cont1,cont1))
		cont1=cont1+1
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Sumar dos matrices"
Escribir "i<-0 a n-1 ; j<-0 a n-1"

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		Escribir Sin Saltar "[" , matriz(i,j) , "]"," "
	FinPara
	Escribir " "
FinPara
Escribir " "

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		Escribir Sin Saltar "[" , matriz1(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "
Escribir "La suma de las matrices es: "
Esperar Tecla

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		matrizs(i,j)=matriz(i,j)+matriz1(i,j)
		Escribir Sin Saltar "[" , matrizs(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "
Escribir "Para la resta es lo mismo pero se cambia signo por (-)"
Esperar Tecla

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		matrizs(i,j)=matriz(i,j)-matriz1(i,j)
		Escribir Sin Saltar "[" , matrizs(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara

Escribir " "
Escribir "Para trasponer la matriz se cambia fila por columna en la impresion"
Esperar Tecla

Para j<-0 hasta 2 Con Paso 1 Hacer   						
	Para i<- 0 hasta 2 Con Paso 1 Hacer	
		matrizs(i,j)=matriz(i,j)-matriz1(i,j)
		Escribir Sin Saltar "[" , matrizs(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara

Escribir "============================================================"
FinSubProceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
SubProceso multiplicaMatriz()
/// MULTIPLICAR DOS MATRICES
Definir cadena1, cadena2 como caracter
Definir matriz,matriz1,matrizm, i, j, cont,cont1, cont2, sumam como Real
Dimension matriz(3,3),matriz1(3,3),matrizm(3,3)
cadena1= "101010101"
cadena2= "101010101"

cont=0
cont1=0

Para i<-0 hasta 2 Con Paso 1 Hacer
	Para j<-0 hasta 2 Con Paso 1 Hacer
		matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
		cont=cont+1
		matriz1(i,j)=convertiranumero(subcadena(cadena2,cont1,cont1))
		cont1=cont1+1
	FinPara
FinPara
Escribir ""
Escribir "============================================================"
Escribir "Multiplicar dos matrices"
Escribir "i<-0 a n-1 ; j<-0 a n-1"

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<- 0 hasta 2 Con Paso 1 Hacer	
		Escribir Sin Saltar "[" , matriz1(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "

Para i<-0 hasta 2 Con Paso 1 Hacer
	cont2=0
	Mientras cont2 <= 2 Hacer
		sumam=0
		Para j<-0 hasta 2 Con Paso 1 Hacer	
			sumam=sumam+matriz(i,j)*matriz1(i,cont2)
		FinPara	
		matrizm(i,cont2)=sumam
		cont2=cont2+1		
	FinMientras
FinPara

Escribir "El producto de las matrices es: "
Esperar Tecla

Para i<-0 hasta 2 Con Paso 1 Hacer   						
	Para j<-0 hasta 2 Con Paso 1 Hacer	
		Escribir Sin Saltar "[" , matrizm(i,j) , "]", " "
	FinPara
	Escribir " "
FinPara
Escribir " "

Escribir "La solucion es "
Escribir "2 0 2"
Escribir "0 1 0"
Escribir "2 0 2"

Escribir "============================================================"
FinSubproceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////

SubProceso diagonales()
	Definir cadena1, cadena2 como caracter
	Definir matriz,matriz1, vector, vector1, i, j, cont,cont1 como Entero
	Dimension matriz(3,3),matriz1(3,3),vector(3),vector1(3)
	cadena1= "123456789"
	cadena2= "987654321"
	
	cont=0
	cont1=0
	
	Para i<-0 hasta 2 Con Paso 1 Hacer
		Para j<-0 hasta 2 Con Paso 1 Hacer
			matriz(i,j)=convertiranumero(subcadena(cadena1,cont,cont))
			cont=cont+1
			matriz1(i,j)=convertiranumero(subcadena(cadena2,cont1,cont1))
			cont1=cont1+1
		FinPara
	FinPara
	Escribir ""
	Escribir "============================================================"
	Escribir "Diagonales de las matrices"
	Escribir "i<-0 a n-1 ; j<-0 a n-1"
	
	Para i<-0 hasta 2 Con Paso 1 Hacer   						
		Para j<- 0 hasta 2 Con Paso 1 Hacer	
			Escribir Sin Saltar "[" , matriz(i,j) , "]"," "
		FinPara
		Escribir " "
	FinPara
	Escribir " "
	
	Para i<-0 hasta 2 Con Paso 1 Hacer   						
		Para j<- 0 hasta 2 Con Paso 1 Hacer	
			Escribir Sin Saltar "[" , matriz1(i,j) , "]", " "
		FinPara
		Escribir " "
	FinPara
	Escribir " "
	
	Escribir "Las Diagonales Principales son: "
	Esperar Tecla
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Si i=j Entonces
				Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
				Escribir Sin Saltar "[" , matriz1(i,j) , "]", " "
			SiNo
				Escribir Sin Saltar " "
			Fin Si
		FinPara
		Escribir " "
	Fin Para
	Escribir " "
	
	Escribir "Las Diagonales Secundarias son: "
	Esperar Tecla
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Si (i+j)=2 Entonces
				Escribir Sin Saltar "[" , matriz(i,j) , "]", " "
				Escribir Sin Saltar "[" , matriz1(i,j) , "]", " "
			SiNo
				Escribir Sin Saltar " "
			Fin Si
		FinPara
		Escribir " "
	Fin Para
	Escribir " "
	Escribir "============================================================"
FinSubproceso

//////////////////////////////////////////////////////////////////////////////////////////////////////////
	