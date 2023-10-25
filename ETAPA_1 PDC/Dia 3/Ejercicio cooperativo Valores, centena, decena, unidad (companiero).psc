Algoritmo Sin_titulo
	definir centena, decena, unidad, num, resultado Como Real
	Escribir "ingresar el numero de 3 digitos:  "; 
	leer num
	unidad<- num mod 10;
	decena<- (num mod 100-unidad)/10;
	centena<- (num mod 1000-num mod 100)/100;
	Si (centena+decena+unidad) mod 3 = 0 Entonces
		resultado<- (10-unidad) mod 10;
	SiNo
		resultado<- (centena)^(decena);
	FinSi
	Escribir  "Valor de centena:  ", centena;
	Escribir " valor de Decena:  ", decena;
	Escribir  " Valor de unidad:  ", unidad
	Escribir "valor de resultado:  ", resultado
FinAlgoritmo
