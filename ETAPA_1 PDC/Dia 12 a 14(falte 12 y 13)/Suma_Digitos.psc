Algoritmo Suma_Digitos
	
	//	Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
	//Ejemplo: 25 = 2 + 5 = 7
	//Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
	//		resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.
	Definir n, sum Como Entero
	
	Escribir"Ingrese un n�mero de dos digitos: "
	Leer n
	sum = sumDigitos(n)
	Escribir"La suma de los d�gitos del n�mero que ingreso es de: ",sumDigitos(n)
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