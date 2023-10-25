////Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
////que ingrese la opción Salir:
////	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
////	usando la función Aleatorio(valorMin, valorMax) de PseInt.
////	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
////	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
////a elemento. Ejemplo: C = A + B
////	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
////elemento. Ejemplo: C = B - A
////E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
////	A, B, o C.
////	F. Salir.
////NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
////para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una
////vez.

SubProceso LlenaVector(vec,n)
	Definir i Como Entero
	Escribir "EL vector fue llenado"
	Para i=0 Hasta n-1 Hacer
		vec[i]=Aleatorio(-100,100)
	FinPara
	MuestraVector(vec,n)
FinSubProceso
SubProceso SumaVector(vectA,vectB,vectC,n)
	Definir i Como Entero
	Escribir "Los vectores fueron sumados"
	Para i=0 Hasta n-1 Hacer
		vectC[i]=vectA[i]+vectB[i]
	FinPara
	MuestraVector(vectC,n)
	
FinSubProceso
SubProceso RestaVector(vectA,vectB,vectC,n)
	Definir i Como Entero
	Escribir "Los vectores fueron restados"
	Para i=0 Hasta n-1 Hacer
		vectC[i]=vectB[i]-vectA[i]
	FinPara
	MuestraVector(vectC,n)
	
FinSubProceso
SubProceso MuestraVector(vector,n)
	Definir i Como Entero
	Escribir Sin Saltar"El vector es:  ("
	Para i=0 Hasta n-1 Hacer
		Si i<>(n-1) Entonces
			Escribir  vector[i] " , " Sin Saltar
		SiNo
			Escribir  vector[i] ")"
		Fin Si
	FinPara
	
FinSubProceso

SubProceso EspLimCon()
	Escribir "Presione una tecla para continuar."
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

SubProceso menu(vectA,vectB,vectC,n)
	Definir Respu,respu2,respu3 Como Caracter
	Repetir
	Escribir "Elija una opción"
	escribir "A. Llenar Vector A."
	escribir "B. Llenar Vector B."
	escribir "C. Llenar Vector C con la suma de los vectores A y B."
	escribir "D. Llenar Vector C con la resta de los vectores B y A."
	escribir "E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector"
	escribir "A, B, o C."
	escribir "F. Salir."
	Leer Respu	
		Segun Mayusculas(Respu) Hacer
			"A":
				LlenaVector(vectA,n)
				EspLimCon()
				
			"B":
				LlenaVector(vectB,n)
				EspLimCon()
			"C":
				SumaVector(vectA,vectB,vectC,n)
				EspLimCon()
			"D":
				RestaVector(vectA,vectB,vectC,n)
				EspLimCon()
			"E":
				Repetir
					escribir "¿Qué vector quiere mostrar: Vector"
					escribir "A, B, o C."
					Leer respu2
					Segun Mayusculas(respu2) Hacer
						"A":
							MuestraVector(vectA,n)
							EspLimCon()
						"B":
							MuestraVector(vectB,n)
							EspLimCon()
						"C":
							MuestraVector(vectC,n)
							EspLimCon()
						De Otro Modo:
							Escribir "Opción incorrecta, intente nuevamente"
							EspLimCon()
					Fin Segun
				Hasta Que Mayusculas(respu2)="A" o Mayusculas(respu2)="B" o Mayusculas(respu2)="C" 
				
			"F":
				Escribir "¿Desea salir? (S/N)"
				Leer respu3
				Si Mayusculas(respu3)="S" Entonces
					Escribir "Saliendo."
				SiNo
					Si Mayusculas(respu3)="N"  Entonces
						menu(vectA,vectB,vectC,n)
					Fin Si
				Fin Si
			De Otro Modo:
				Escribir "Opción incorrecta, intente nuevamente"
		Fin Segun
	Hasta Que  Mayusculas(respu)="F"
	
FinSubProceso

Algoritmo Encuentro18_4
	Definir vectA , vectB , vectC Como Real
	Definir n Como Entero
	Escribir "Ingrese la dimensión del vector "
	Leer n
	Dimension vectA[n] ,vectB[n] ,vectC[n] 
	menu(vectA,vectB,vectC,n)
FinAlgoritmo
