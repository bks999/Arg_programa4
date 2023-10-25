Proceso FactorialRecursivoLog
	Definir num, res Como Entero
	Escribir "Ingrese el número a calcular el factorial."
	Leer num
	res = Factorial(num)
	Escribir "Finalmente, el factorial de ", num, " es ", res
	
FinProceso
Funcion f <- Factorial(n)
	Definir f,ant Como Entero
	Escribir "Inicia la ejecución del cálculo de ",n,"!"
	si	n=0 o n=1 Entonces
		f=1
		Escribir "Condición base: ",n,"! = 1"
	SiNo
		Escribir "Para conocer el ",n,"! debo calcular el ", (n-1), "!"
		ant = Factorial(n-1)
		f = n * ant
		Escribir "Ahora si! El ",n,"! = ", n," * ", (n-1), "! = " n, " * ", ant " = ", f 
	FinSi
	Escribir "Finaliza ejecución del cálculo de ", n,"!"
FinFuncion
	