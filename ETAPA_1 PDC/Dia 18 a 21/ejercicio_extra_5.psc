//Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
//un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
//posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
//o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
//	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	más cercano.

Algoritmo ejercicio_extra_5_delejercicio6
	Definir frase como cadena
	Definir vector, letra, aux Como Caracter
	Definir i,j, a, n Como Entero
	Escribir "Ingrese una frase"
	Leer frase
	Dimension vector(20)
	
	Para i=0 hasta 19 Hacer
		vector(i)= Subcadena(frase,i,i)
	FinPara
	
	Escribir "Ingrese un caracter cualquiera"
	Leer letra
	Escribir "Ingrese una posicion dentro del arreglo para ingresar el caracter en la posicion indicada"
	Leer a
	
	Para i = a hasta 19-a Con Paso 1 Hacer
		si a = i Entonces
			n=19
			para j=19 hasta a Con Paso -1 Hacer
				vector(j)=vector(n-1)
				n=n-1
			FinPara
			vector(i)=letra
		FinSi
	FinPara
	
	Para i=0 hasta 19 Hacer
		Escribir sin saltar "[" i "]"
	FinPara
	Escribir ""
	Para i=0 hasta 19 Hacer
		Escribir sin saltar "[" vector(i) "]"
	FinPara
	Escribir ""
	
FinAlgoritmo
