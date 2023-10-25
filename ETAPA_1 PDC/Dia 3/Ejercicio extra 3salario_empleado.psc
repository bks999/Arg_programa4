//Hacer un programa que calcule el salario de un empleado, si se descuenta el 20% de su
//		salario bruto.

Algoritmo salario_empleado
	Definir salarioBruto, salarioFinal Como Real
	
	Escribir "Ingrese su salario bruto"
	Leer salarioBruto
	
	salarioFinal = salarioBruto - (20/100 * salarioBruto)
	
	Escribir "Su salario total luego de descontar el 20% es de : " salarioFinal
	
FinAlgoritmo
