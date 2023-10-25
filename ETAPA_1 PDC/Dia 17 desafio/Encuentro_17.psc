////subprograma calcularMuro
////Nos debe pedir primero si el muro será de 20 o 30 cm de espesor. Luego el largo y el alto. A partir
////de estos datos se debe mostrar al usuario la superficie del muro y la cantidad de materiales que
///necesitaremos para construirlo.
////Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena
////y 120 ladrillos.
////Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena
////y 90 ladrillos.
SubProceso  calcularMuro()
	Definir ancho, alto, largo, sup Como Real
	
	Repetir
		Escribir "El muro será de:" 
		escribir "1) 20 cm de espesor" 
		Escribir "2) 30 cm de espesor"
		Leer ancho
	Mientras Que ancho<0 o ancho>2
	Escribir "Dato cargado correctamente."
	Escribir "Ingrese el largo y el alto de la pared en metros: "
	Leer  alto, largo
     calcularSuperficie(alto,largo,sup)
	 Escribir "Datos cargados correctamente."
	 Escribir "Necesitaras:"
	 Escribir " "
	Segun ancho Hacer
		1:
			Escribir "El muro es de 20cm y necesitaremos por ", sup ," metros cuadrados: "
			escribir 10.9*sup " kg de cemento."
			escribir 0.09*sup  " m3 de arena."
			escribir 90*sup  " ladrillos."
		2:
			Escribir "El muro es de 30cm y necesitaremos por ", sup ," metros cuadrados:"
			Escribir 15.2*sup  " kg de cemento."
			Escribir 0.115*sup " m3 de arena."
			Escribir 120*sup " ladrillos."
	Fin Segun
FinSubProceso

////subprogramas calcularSuperficie y calcularVolumen
////Haremos ambos para usarlos dentro de los otros subprogramas. El usuario no puede acceder a
////ellos.

SubProceso calcularSuperficie(a,b,c Por Referencia)
	c=a*b
FinSubProceso

SubProceso calcularVolumen(a,b,c,d Por Referencia)
	d=a*b*c
FinSubProceso

////subprograma calcularViga
////Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
////	m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
////	Debemos mostrar al usuario la cantidad de materiales necesaria.

SubProceso calcularViga()
	Definir l Como Real
	Escribir Sin Saltar"Ingrese el largo de la viga en metros lineales:"
	Leer l
	Escribir "Necesitaras:"
	Escribir " "
	Escribir 9*l " kg de cemento "
	Escribir 0.02*l " m3 de arena "
	Escribir 0.02*l " m2 de piedra "
	Escribir 4*l " m de hierro del 8 "
	Escribir 3*l " m de hierro del 4."
FinSubProceso

////subprograma calcularColumna
////Nos debe pedir el largo de la columna. Por metro lineal de columna se necesitarán: 7.5 kg de
////cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
////Debemos mostrar al usuario la cantidad de materiales necesaria.

SubProceso calcularColumna()
	Definir l Como Real
	Escribir Sin Saltar"Ingrese el largo de la columna en metros lineales:"
	Leer l
	Escribir "Necesitaras:"
	Escribir " "
	Escribir 7.5*l " kg de cemento "
	Escribir 0.016*l " m3 de arena "
	Escribir 0.016*l " m2 de piedra "
	Escribir 6*l " m de hierro del 10 "
	Escribir 3*l " m de hierro del 4."
FinSubProceso

////subprograma calcularContrapisos
////Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
////Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de
////piedra.
////Debemos mostrar al usuario la cantidad de materiales necesaria.

SubProceso calcularContrapisos()
	Definir a,b,c,d Como Real
	Escribir "Ingrese espesor, ancho y largo del contrapiso a calcular, en metros:"
	Leer a,b,c
	calcularVolumen(a,b,c,d)
	Escribir 105*d "  kg de cemento"
	Escribir 0.45*d " m3 de arena" 
	Escribir 0.9*d "  m3 de piedra"
FinSubProceso

////subprograma calcularTecho
////Nos debe pedir espesor, ancho y largo del techo a calcular.
////Por metro cuadrado de techo se necesita: 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de
////piedra, 7 m de hierro del 8 y 4 m de hierro del 6
////Debemos mostrar al usuario la cantidad de materiales necesaria.

SubProceso calcularTecho()
	Definir a,b,c,d Como Real
	Escribir "Ingrese espesor, ancho y largo del techo a calcular, en metros:"
	Leer a,b,c
	calcularSuperficie(b,c,d)
	Escribir 33*d   " kg de cemento " 
	Escribir 0.072*d  " m3 de arena  "
	Escribir 0.072*d  "  m3 de piedra  " 
	Escribir 7*d  "  m de hierro del 8  "
	Escribir 4*d   " m de hierro del 6"
	
FinSubProceso

////subprograma calcularPisos
////Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la
////superficie y añadirle un 10% extra por recortes
////Mostrar el resultado en m2

SubProceso calcularPisos()
	Definir a,l,sup Como Real
	Escribir "Ingrese ancho y largo del paño de piso a colocar: "
	Leer a,l
	calcularSuperficie(a,l,sup)
	Escribir"Necesitará " sup*1.1 " m2 de piso."
FinSubProceso

////subprograma calcularPintura
////Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en cuenta
////que rinde 6 m2 por litro de pintura.

SubProceso calcularPintura()
	Definir a Como Real
	Escribir "Ingrese la superficie del muro: "
	Leer a
	Escribir"Necesitará " a/6 " Litos de pintura"
FinSubProceso

////subprograma calcularIluminacion
////Nos debe pedir la superficie de la habitación. La iluminación la calculamos de la siguiente forma:
////superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural (ventanas y
////puertas de vidrio). Mostrar resultado

SubProceso calcularIluminacion()
	Definir a Como Real
	Escribir "Ingrese la superficie de la habitación: "
	Leer a
	Escribir"Necesitará " a* 0.20 " cantidad mínima de superficie de iluminación natural (ventanas y puertas de vidrio)"
FinSubProceso

////Vamos a programar una calculadora de materiales para construir
////	Primero leeremos todo el ejercicio y luego dividiremos tareas en el equipo.
////	El algoritmo principal sólo debe llamar al subPrograma menu()
////		Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a creatividad
////			del programador
////		El menú debe quedar de la siguiente manera:
////			1. Calcular muro de ladrillo
////			2. Calcular viga de hormigón
////			3. Calcular columnas de hormigón
////			4. Calcular contrapisos
////			5. Calcular techo
////			6. Calcular pisos
////			7. Calcular pintura
////			8. Calcular iluminación
////			9. Salir

subProceso menu()
	Definir n Como Entero
	Escribir "Elija una opción:"
	Escribir "1. Calcular muro de ladrillo"
	Escribir "2. Calcular viga de hormigón"
	Escribir "3. Calcular columnas de hormigón"
	Escribir "4. Calcular contrapisos"
	Escribir "5. Calcular techo"
	Escribir "6. Calcular pisos"
	Escribir "7. Calcular pintura"
	Escribir "8. Calcular iluminación"
	Escribir "9. Salir"
	Leer n
	Repetir
		Segun n Hacer
			1: calcularMuro()
			2: calcularViga()
			3: calcularColumna()
			4: calcularContrapisos()
			5: calcularTecho()
			6: calcularPisos()
			7: calcularPintura()
			8: calcularIluminacion()
			9:Escribir "Saliendo."
		Fin Segun
	Mientras Que n<0 o n>9
	
FinSubProceso

Algoritmo Encuentro_17
menu()
	
FinAlgoritmo
