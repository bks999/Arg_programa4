//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al arreglo

Algoritmo sin_titulo
	Definir vector, i, suma, resta, multi Como Real
	Dimension vector[10]
	Escribir "Ingrese 10 numero reales"
	suma=0
	resta=0
	multi=1
	
	Para i=0 Hasta 9
		leer vector[i]
		suma = suma + vector[i]
		si	vector[i] < resta
			resta = resta - vector[i]
		SiNo
			resta = vector[i] - resta
		FinSi
		multi = vector[i] * multi
	FinPara
	
	Escribir "La suma de sus numeros ingresados son: ", suma,". La resta es: ", resta,". Y la multiplicación es: ", multi
FinAlgoritmo
