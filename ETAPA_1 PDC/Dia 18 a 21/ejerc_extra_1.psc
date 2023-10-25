Algoritmo sin_titulo
//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
	//	muestre por pantalla.
	
	definir i, cinco_vector1, cinco_vector2, dv como entero
	Dimension cinco_vector1(5)
	Dimension cinco_vector2(5)
	dv = 4
	
	Escribir "Se rellenaran dos vectores con 5 valores aleatorios"
	
	para i = 0 hasta 4 Hacer
		cinco_vector1(i)=aleatorio(1,100)
		cinco_vector2(i)=Aleatorio(1,100)
	FinPara
	
	Escribir "Mostrando valores del vector N°1: "
	escvector(cinco_vector1,dv)
	Escribir "Mostrando valores del vector N°2: "
	escvector(cinco_vector2,dv)
	
	
FinAlgoritmo

Subproceso escvector(vector,dv)
	Definir i, retorno Como Entero
	para i = 0 hasta dv Hacer
		Escribir vector(i), " " Sin Saltar
	FinPara
	Escribir ""
FinSubProceso

	