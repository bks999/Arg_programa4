////Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide desarrollar
////un programa que:
////	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
////Ayuda: utilizar la función Subcadena de PSeInt.
////	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una posición
////	dentro del arreglo, y el programa debe intentar ingresar el carácter en la posición
////	indicada, si es que hay lugar (es decir la posición está vacía o es un espacio en
////	blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado, de
////	lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
////Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
////	H o l a m u n d o c r u e l !
////	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
////Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
////		H o l a m u n d o % c r u e l !
////		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
SubProceso LlenaVector(vec,frase,n)
	Definir i Como Entero
	Para i=0 Hasta n-1 Hacer
		vec[i]=Subcadena(frase,i,i)
	FinPara
	Escribir "EL vector fue llenado"
	MuestraVector(vec,n)
FinSubProceso

SubProceso EspLimCon()
	Escribir "Presione una tecla para continuar."
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

SubProceso MuestraVector(vector,n)
	Definir i Como Entero
	Escribir "El vector es: "
	Para i=0 Hasta n-1 Hacer
		Si i<>(n-1) Entonces
			Escribir  "[" ,vector[i], "]" Sin Saltar
		SiNo
			Escribir "[", vector[i], "]"
		Fin Si
	FinPara
FinSubProceso

SubProceso ComVector(vec,n,car)
	Definir pos Como Entero
	Definir log Como Logico
	log=Falso
	Repetir
		Repetir
			Escribir Sin Saltar "Ingrese una posición (1-20): "
			leer pos
			Si pos<0 o pos>20 Entonces
				Escribir "Elección incorrecta. Intente nuevamente"
			Fin Si
		Mientras Que pos<0 o pos>20
		Si vec[pos-1]="" o vec[pos-1]=" " Entonces
			vec[pos-1]=car
			Escribir "Caracter agregado."
			log=Verdadero
		SiNo
			Escribir "Posición ocupada."
			Escribir "Intente nuevamente."
		Fin Si
		MuestraVector(vec,n)
		Escribir " "
	Mientras  Que log=Falso
FinSubProceso

Algoritmo Encuentro18_6
	Definir vectA ,frase, car Como caracter
	Definir n Como Entero
	n=20
	Dimension vectA[n]
	Escribir "Ingrese una frase:"
	Leer frase
	LlenaVector(vectA,frase,n)
	esplimcon()
	Escribir Sin Saltar "Ingrese un caracter:"
	Leer car
	ComVector(vectA,n,car)
	
FinAlgoritmo

