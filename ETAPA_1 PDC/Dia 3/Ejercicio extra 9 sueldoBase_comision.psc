//Un vendedor recibe un sueldo base m�s un 10% extra por comisi�n de sus ventas, el
//vendedor desea saber cu�nto dinero obtendr� por concepto de comisiones por las tres
//ventas que realiza en el mes y el total que recibir� en el mes tomando en cuenta su sueldo
//base y comisiones.

Algoritmo sueldoBase_comision
	Definir sueldoBase, comision, venta1, venta2, venta3 Como Real
	Escribir "Ingrese su sueldo base mensual"
	Leer sueldoBase
	Escribir "Ingrese el valor de sus tres ventas en este mes"
	Leer venta1, venta2, venta3
	
	comision= (venta1+venta2+venta3)*10/100
	
	Escribir "Dinero por concepto de comisiones por ventas: " comision Sin Saltar
	Escribir ""
	Escribir "El cobro mensual total sera de $" comision + sueldoBase "."
FinAlgoritmo
