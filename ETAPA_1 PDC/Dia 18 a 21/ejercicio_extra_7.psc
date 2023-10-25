//Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//		igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo ejercicio_extra_7
	Definir V ,producto , n , i Como Entero
	n=4
	Dimension V(n)
	
	Para i=0 hasta n-1 Hacer
		V(i)=Aleatorio(0,10)
		Escribir Sin Saltar "[" V(i) "]"
	FinPara
	Escribir ""
	producto=1
	Para i=0 hasta n-1 Hacer
		producto=multi(producto,V(i),n)
	FinPara
	Escribir "El producto de todos los valores es " producto
FinAlgoritmo

Funcion retorno <- multi(v1,v2, n)
	Definir retorno Como Entero
	retorno = v1*v2
FinFuncion


	