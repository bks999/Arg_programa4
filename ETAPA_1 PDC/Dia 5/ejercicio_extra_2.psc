Algoritmo ejercicio_extra_2
	Definir mes Como Caracter
	Definir compra, promedio como Real
	
	Escribir "Realice mis compras en el mes de: "
	Leer mes
	
	Escribir "El monto de mis compras fue de: "
	Leer compra
	
	Si mes = "septiembre" o mes = "octubre" o mes = "noviembre" Entonces
		Escribir "El monto total con la aplicacion del descuento de 10% es de " compra - (compra*10/100) " pesos."
	SiNo
		Escribir "El monto total sin descuento alguno es de " compra " pesos."
	FinSi
	
FinAlgoritmo
