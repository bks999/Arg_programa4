//Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//su valor más grande.

Algoritmo ejercicio_extra_6
	Definir arreglo , n , i, min, max, dif Como Entero
	n=Aleatorio(1,10)
	Dimension arreglo(n)
	min=100
	max=0
	Para i=0 hasta n-1 Hacer
		arreglo(i)=aleatorio(0,100)
		si arreglo(i)>max Entonces
			max=arreglo(i)
		FinSi
		si arreglo(i)<=min Entonces
			min=arreglo(i)
		FinSi
	FinPara
	Escribir "El valor mas chico del vector es: " min
	Escribir "El valor mas grande del vector es: " max
	Escribir "La diferencia entre ambos valores es: " diferencia(max,min)
FinAlgoritmo

Funcion retorno <- diferencia(n1,n2)
	Definir retorno Como Entero
	retorno=n1-n2
FinFuncion
