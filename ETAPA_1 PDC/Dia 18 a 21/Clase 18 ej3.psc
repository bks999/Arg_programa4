//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el usua-
//rio. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar tam-
//bi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se en-
//cuentra el valor. En caso de que el n�mero se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.

//Finalmente, en caso de que el n�mero a buscar no est� adentro del arreglo se debe mostrar
//un mensaje.

Algoritmo sin_titulo
	Definir vector, tam, busqueda, i como real
	Escribir "Ingrese la cantidad de numeros que quiere dentro del vector"
	leer tam
	Dimension vector[tam]
	
	Para i=0 hasta tam-1
		Escribir "Ingrese un numero"
		leer vector[i]
	FinPara
	Escribir "Ingrese un numero para buscar dentro del vector"
	leer busqueda
	
	Para i=0 hasta tam-1
		
		si vector[i] = busqueda Entonces
			Escribir "Su numero fu� encontrado en la posici�n: ",i
		SiNo
			Escribir "Numero no encontrado en la posici�n: ",i
		FinSi
		
	FinPara
	
FinAlgoritmo
