Algoritmo Suma_Digitos
	
	//	Realizar una función que calcule la suma de los dígitos de un número.
	//Ejemplo: 25 = 2 + 5 = 7
	//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
	//		resto de una división entre 10. Recordar el uso de la función Mod y Trunc.
	Definir n, sum Como Entero
	
	Escribir"Ingrese un número de dos digitos: "
	Leer n
	sum = sumDigitos(n)
	Escribir"La suma de los dígitos del número que ingreso es de: ",sumDigitos(n)
FinAlgoritmo

Funcion retorno <- sumDigitos(n)
	definir retorno, sum como entero
	
	sum=trunc(n/10)+(n mod 10)
	retorno=sum
	
FinFuncion


//	Definir nTxt como cadena
//	
//	nTxt = ConvertirATexto(n)
//	 
//	long = longitud(nTxt)
//	
//	
//	para i = 1 hasta long Hacer
//		
//		sum = sum + SubCadena(nTxt,i,i) 
//		
//	FinPara