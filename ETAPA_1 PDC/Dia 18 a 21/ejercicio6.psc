Algoritmo ejercicio6
	Definir frase como cadena
	Definir vector, letra Como Caracter
	Definir i, a Como Entero
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
	
	Para i = 0 hasta 19 Hacer
		si a = i y vector(i)<>" " Entonces
			Escribir Sin Saltar i, " = ", vector(i) " ** "
			Escribir " La posicion esta ocupada"
			Escribir ""
		FinSi
		
		si a= i y vector(i)=" " Entonces
			vector(a)=letra
			vector(i) = vector(a)
			Escribir "Ahora el vector(" a ") es " letra
		FinSi
	FinPara
FinAlgoritmo
