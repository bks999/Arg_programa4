//Una empresa tiene personal de distintas áreas con distintas condiciones de contratación y
//formas de pago. El departamento de contabilidad necesita calcular los sueldos semanales
//(lunes a viernes) en base a las 3 modalidades de sueldo:
//	a) comisión
//	b) salario fijo + comisión, y
//	c) salario fijo
//	a) Para la modalidad salario por comisión se debe ingresar el monto total de las ventas
//		realizadas en la semana, y el 40% de ese monto total corresponde al salario del
//		empleado.
//		b) Para la condición de salario fijo + comisión, se debe ingresar el valor que se paga por
//			hora, la cantidad de horas trabajadas semanalmente y el monto total de las ventas en
//			esa semana. En este tipo de contrato las horas extras no están contempladas y se fija
//			como máximo 40 horas por semana. La comisión por las ventas se calcula como 25%
//			del valor de venta total.
//			c) Finalmente, para la modalidad de salario fijo se debe ingresar el valor que se paga por
//				hora y la cantidad de horas trabajadas en la semana. En el caso de exceder las 40
//				horas semanales, las horas extras se deben pagar con un extra del 50% del valor de la
//				hora. 
//Realizar un menú de opciones para poder elegir el tipo de contrato que tiene un empleado.


Algoritmo ejercicio_extra_8
	Definir select Como Caracter
	Definir comision, fijoComision, fijo, venta1,venta2,venta3,venta4, venta5,porHora, hh, ventaFijoComision Como Real
	Escribir "Ingrese A,B o C para seleccionar su tipo de sueldo"
	Escribir "[A] Comision"
	Escribir "[B] Salario fijo + comision"
	Escribir "[C] Salario fijo"
	Leer select
	
	Segun Mayusculas(select) Hacer
		"A":
			Escribir "Ingrese sus ventas durante la semana (ingrese el total de ventas por cada dia)"
			Leer venta1,venta2,venta3,venta4,venta5
			comision=(venta1+venta2+venta3+venta4+venta5)*40/100
			Escribir "Su sueldo es $" comision
		"B":
			Escribir "Ingrese cuanto cobra por hora"
			Leer porHora
			Escribir "Ingrese cuantas horas trabaja semanalmente"
			Leer hh
			Escribir "Ingrese el monto total de las ventas en esta semana"
			Leer ventaFijoComision
			Si hh>40 Entonces
				fijoComision=40*porHora+ventaFijoComision*40/100
			SiNo
				Si hh<=40 Entonces
					fijoComision=hh*porHora+ventaFijoComision*40/100
				FinSi
			FinSi
			Escribir "Su sueldo es $" fijoComision
		"C":
			Escribir "Ingrese cuanto cobra por hora"
			Leer porHora
			Escribir "Ingrese cuantas horas trabaja semanalmente"
			Leer hh
			Si hh<=40 Entonces
				fijo=hh*porHora
			SiNo
				si hh>40 entonces
					fijo=40*porHora+(hh-40)*porHora*150/100
				FinSi
			FinSi
			Escribir "Su sueldo es $" fijo
	FinSegun
	
FinAlgoritmo
