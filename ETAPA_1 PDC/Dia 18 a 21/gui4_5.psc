////Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario.
////A continuación, se deberá crear una función que reciba el vector y devuelva el valor más
////grande del vector.
SubProceso llenaVector(vec,n) 
	Definir i Como Entero
	Escribir "Ingrese los ", n ," valores"
	Para i=0 Hasta n-1 Hacer
		leer vec[i]
	Fin Para
FinSubProceso
SubProceso MuestraVector(vec,n)
	Definir i Como entero
	Para i=0 Hasta n-1 Hacer
		Escribir Sin Saltar "[" , vec[i], "]"
	Fin Para
	Escribir " "
FinSubProceso

Funcion ret=MaxVec(vec,n)
	Definir ret,i Como Entero
	ret=-999999
	Para i=0 Hasta n-1 Hacer
		Si vec[i]>ret Entonces
			ret=vec[i]
		Fin Si
	Fin Para
FinFuncion
Algoritmo gui4_5
	Definir vector, n Como Entero
	Escribir Sin Saltar"Ingrese la dimension del vector:"
	leer n
	Dimension vector[n]
	llenaVector(vector,n)
	MuestraVector(vector,n)
	Escribir "El maximo valor del vector es: ", MaxVec(vector,n)
	
FinAlgoritmo
