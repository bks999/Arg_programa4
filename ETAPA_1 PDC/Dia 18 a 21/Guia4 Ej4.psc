Algoritmo VectoresEjercicio4_Version_Diego_Barboza
	Definir n, vectorA,vectorB,vectorC Como Entero
	definirN(n)
	Dimension vectorA(n), vectorB(n), vectorC(n)
	menu(n,vectorA,vectorB,vectorC)
FinAlgoritmo

SubProceso menu(n,vectorA, vectorB, vectorC)
	Definir letra Como Caracter
		Repetir
			/// mostrar menu
			Limpiar Pantalla
			Escribir "Menú de principal"
			Escribir "   A. Llenar Vector A"
			Escribir "   B. Llenar Vector B"
			Escribir "   C. Llenar Vector C con la suma de los vectores A y B"
			Escribir "   D. Llenar Vector C con la resta de los vectores B y A"
			Escribir "   E. Mostrar Vector"
			Escribir "   F. Salir"
			/// ingresar una opcion
			Escribir "Elija una opción (A-F): "
			Leer letra
			letra=Mayusculas(letra)	
			/// procesar esa opción
			Segun letra Hacer
				"A":
					rellenaVector(vectorA,n)
					Escribir"Oprima Cualquier Tecla para Continuar"
					Esperar Tecla
				"B":
					rellenaVector(vectorB,n)
					Escribir"Oprima Cualquier Tecla para Continuar"
					Esperar Tecla
				"C":
				    fusiondeVectores(vectorA,vectorB,vectorC,n)				
					Escribir"Oprima Cualquier Tecla para Continuar"
					Esperar Tecla
				"D":
					RestaDeVectores(vectorB,vectorA,vectorC,n)
					Escribir"Oprima Cualquier Tecla para Continuar"
					Esperar Tecla
				"E":
					MostrarVector(vectorA,vectorB,vectorC,n)
					Escribir "Oprima Cualquier Tecla para Continuar"
					Esperar Tecla	
				"F":
					
				De otro modo:
					escribir"Opcion Incorrecta, intentelo de nuevo por favor"
					Esperar 1.5 segundos
			FinSegun
			
		Hasta Que letra="F"
		Escribir "Hasta La Proxima"
FinSubProceso

SubProceso rellenaVector(vectorx,n)
	Definir i Como Entero
	Para i<-0 Hasta n-1 Hacer
		vectorx(i)=aleatorio(-100,100)
		escribir vectorx(i)
	FinPara
FinSubProceso


SubProceso definirN(n Por Referencia)
	Escribir "Defina la dimensión de los vector"
	Leer n
FinSubProceso

subproceso fusiondeVectores(A,B,C,n)
	definir i Como Entero
	para i=0 hasta n-1 hacer
		C(i)=A(i)+B(i)
		mostrar C(i)
	FinPara
FinSubProceso

Subproceso RestaDeVectores(B,A,C,n)
	definir i Como Entero
	para i=0 hasta n-1 hacer
		C(i)=A(i)-B(i)
		mostrar C(i)
	FinPara
FinSubProceso

Subproceso MostrarVector(A,B,C,n)//En esta parte en las opciones del segun se podria poner un para u otra opcion,pero con con fines de 
	Definir Op como Cadena      //automatizar el proceso decidi crear otro subproceso para que funcione con una sola variable.
	repetir                      
	 mostrar "¿Que Vector desea Ver?"
	 leer Op
	 Op= Mayusculas(Op)
    hasta que Op="A" o Op="B" o Op="C"
	Segun Op hacer
		"A":
			MostrarXVector(A,n)
		"B":
			MostrarXVector(B,n)
		"C":
			MostrarXVector(C,n)
	FinSegun
FinSubProceso

SubProceso MostrarXVector(x,n)
	definir i Como Entero
	Para i<-0 Hasta n-1 Hacer
		escribir "[",x(i),"]"
	FinPara
FinSubProceso




