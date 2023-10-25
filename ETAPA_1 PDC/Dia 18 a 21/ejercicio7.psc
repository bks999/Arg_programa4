//Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios. Despu�s,
//	hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//			funci�n debe devolver el resultado de esta validaci�n, para mostrar el mensaje en el algoritmo.
//				Nota: recordar el uso de las variables de tipo l�gico.

SubProceso llenarArreglo(vector1 Por Referencia,vector2 Por Referencia, n)
	Definir i Como Entero
	
	Para i=0 hasta n-1 Hacer
		vector1(i)=Aleatorio(1,10)
		vector2(i)=Aleatorio(1,10)
	FinPara
	
FinSubProceso

Funcion retorno <- igual(vector1 Por Referencia,vector2 Por Referencia, n )
	definir log, retorno Como Logico
	Definir cont, i Como Entero
	llenarArreglo(vector1,vector2, n)
	cont=0
	para i=0 hasta n-1 Hacer
		si vector1(i)=vector2(i) Entonces
			cont=cont+1
		FinSi
	FinPara
	Si cont=n Entonces
		 log=Verdadero
	SiNo
		log=Falso
	FinSi
	retorno=log
FinFuncion
Algoritmo ejercicio7
	Definir vector1, vector2,n,i Como Entero
	Definir respuesta como logico
	n=Aleatorio(1,10)
	Dimension vector1(n)
	Dimension vector2(n)
	respuesta=igual(vector1,vector2, n)
	Escribir "Los valores de ambos vectores son iguales: " respuesta
FinAlgoritmo
