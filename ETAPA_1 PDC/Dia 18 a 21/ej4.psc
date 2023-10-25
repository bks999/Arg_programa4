Algoritmo ej4
	definir op,N,i Como entero
	Escribir "Ingrese dimension de los vectores: "
	leer N
Repetir
	Escribir " "	
	Escribir "*********************************************************"
	Escribir "* 1- Llenar Vector A                                    *"
	Escribir "* 2- Llenar Vector B                                    *"
	Escribir "* 3- Llenar Vector C con la suma de los vectores A y B  *"
	Escribir "* 4- Llenar Vector C con la resta de los vectores B y A *"
	Escribir "* 5- Mostrar vector A,B o C                             *"
	Escribir "* 6- Salir                                              *" 
	Escribir "*********************************************************"
	
	leer op
    Segun op Hacer
		1:
			definir a Como Entero
			dimension a[N]
			para i<-0 hasta (N-1) con paso 1 Hacer
				a[i]=Aleatorio(-100,100)
				Escribir sin saltar "[" a[i] "]"
				
			FinPara	
			
			
		2:
			definir b Como Entero
			dimension b[N]
			para i<-0 hasta (N-1) con paso 1 Hacer
				b[i]=Aleatorio(-100,100)
				Escribir sin saltar "[" b[i] "]"
				
			FinPara
		3: 
			definir c Como Entero
			dimension c[N]
			para i<-0 hasta (N-1) con paso 1 Hacer
				c[i]=a[i]+b[i]
				Escribir sin saltar "[" c[i] "]"
			FinPara
		4:
			definir c Como Entero
			dimension c[N]
			para i<-0 hasta (N-1) con paso 1 Hacer
				c[i]=b[i]-a[i]
				Escribir sin saltar "[" c[i] "]"
			FinPara
		5:
			definir op1 Como Entero
			escribir "**1- Imprimir vector A**"
			Escribir "**2- Imprimir vector B**"
			Escribir "**3- Imprimir vector C**"
			leer op1
			segun op1 Hacer
				1: 
					para i<-0 hasta (N-1) con paso 1 Hacer
						Escribir sin saltar "[" a[i] "]"
					FinPara
				2:
					para i<-0 hasta (N-1) con paso 1 Hacer
						Escribir sin saltar "[" b[i] "]"
					FinPara
				3:
					para i<-0 hasta (N-1) con paso 1 Hacer
						Escribir sin saltar "[" c[i] "]"
					FinPara
			FinSegun
			
		6:	escribir "Hasta luego"
	Fin Segun
Mientras Que op<>6

	
FinAlgoritmo
