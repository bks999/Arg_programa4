Proceso FactorialRecursivoLog
	Definir num, res Como Entero
	Escribir "Ingrese el n�mero a calcular el factorial."
	Leer num
	res = Factorial(num)
	Escribir "Finalmente, el factorial de ", num, " es ", res
	
FinProceso
Funcion f <- Factorial(n)
	Definir f,ant Como Entero
	Escribir "Inicia la ejecuci�n del c�lculo de ",n,"!"
	si	n=0 o n=1 Entonces
		f=1
		Escribir "Condici�n base: ",n,"! = 1"
	SiNo
		Escribir "Para conocer el ",n,"! debo calcular el ", (n-1), "!"
		ant = Factorial(n-1)
		f = n * ant
		Escribir "Ahora si! El ",n,"! = ", n," * ", (n-1), "! = " n, " * ", ant " = ", f 
	FinSi
	Escribir "Finaliza ejecuci�n del c�lculo de ", n,"!"
FinFuncion
	