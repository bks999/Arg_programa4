Algoritmo calculadoraMateriales
	
	
	menu()
FinAlgoritmo
subproceso menu()
	definir num Como Entero
	definir resp como caracter
	Escribir "               - MENU -                "
	Escribir " ***************************************"
	Escribir " *  Calcular muro de ladrillo      (1) *"
	Escribir " *  Calcular viga de hormigón      (2) *"
	Escribir " *  Calcular columnas de hormigón  (3) *"
	Escribir " *  Calcular contrapisos           (4) *"
	Escribir " *  Calcular techo                 (5) *"
	Escribir " *  Calcular pisos                 (6) *"
	Escribir " *  Calcular pintura               (7) *"
	Escribir " *  Calcular iluminación           (8) *"
	Escribir " *                                     *"
	Escribir " *                Salir            (9) *"
	Escribir " ***************************************"
	Escribir ""
	LEER num
	hacer 
		
		
		Segun num Hacer
			1:murodeladrillo()
				
			2:calcularViga()
				
			3:calcularColumna()	
				
			4:calcularContrapiso()
				
			5:calculartecho()
				
			6:calcularpisos()
				
			7:calcularpintura()
				
			8:calculariluminacion()
				
			9:Escribir " Confirma que desea salir?(S/N)"
				LEER  resp
				si Mayusculas(resp) ="S" Entonces
					Escribir " Finalizó el proceso "
				SiNo
					si Mayusculas(resp) ="N" Entonces
						menu()
					FinSi
				FinSi
			De Otro Modo:
				escribir  "Opcion Invalida, intentelo de nuevo"
				menu()
				
		Fin Segun
	mientras que num <>9
FinSubProceso

funcion superficie <- calcularSuperficie(altura, base)
	Definir superficie Como Real
	superficie = altura * base
FinFuncion

funcion volumen <- calcularVolumen(altura, base, espesor)
	Definir volumen Como Real
	volumen = altura * base * espesor	
FinFuncion

SubProceso murodeladrillo()
	definir base, altura, espesor, superficie, cemento, arena, ladrillo Como Real
	Escribir 'base'
	leer base
	Escribir 'altura'
	leer altura
	Escribir 'Ingrese espesor:"
	Escribir "1) 20 cm"
	Escribir "2) 30 cm"
	leer espesor
	superficie = calcularSuperficie(altura, base)
	Segun espesor hacer
		1:
			cemento = superficie*10.9
			arena = superficie*0.09
			ladrillo = superficie*90
			Escribir "Para un muro de 20cm de espesor y de",superficie,"de superficie"
			Escribir "se necesitan",cemento,"kilos de cemento"
			Escribir "se necesitan",arena,"metros cubicos de arena"
			Escribir "se necesitan",ladrillo,"de ladrillos"
		2:
			cemento = superficie*15.2
			arena = superficie*0.115
			ladrillo = superficie*120
			Escribir "Para un muro de 30cm de espesor  y de ",superficie," de superficie"
			Escribir "se necesitan",cemento,"kilos de cemento"
			Escribir "se necesitan",arena,"metros cubicos de arena"
			Escribir "se necesitan",ladrillo,"de ladrillos"
		De Otro Modo:
			Escribir "El espesor no es valido"
			
	Fin Segun
	menu()
	
FinSubProceso
SubProceso calcularViga()
	Definir l como real
	Escribir "Ingrese largo de la viga"
	leer l
	escribir "Se necesitan ",l*9, "kilos de cemento"
	Escribir "se necesitan ",l*0.02," metros cubicos de arena"
	Escribir "se necesitan ",l*0.02," metros cuadrados de piedra"
	escribir "se necesitan ",l*4, " metros del hierro del 8 y", l*3," metros del hierro del 4"
	escribir "**************************************"
	menu()
	
	
FinSubProceso
SubProceso calcularColumna()	
	Definir l como real
	Escribir "Ingrese largo de la columna"
	leer l
	escribir "Se necesitan ",l*7.5 "kilos de cemento"
	Escribir "se necesitan ",l*0.016, "metros cubicos de arena"
	Escribir "se necesitan ",l*0.016," metros cuadrados de piedra"
	escribir "se necesitan ",l*6," metros del hierro del 10 y", l*3," metros del hierro del 4"
	escribir "**************************************"
	menu()
	
FinSubProceso
SubProceso calcularContrapiso()
	Escribir "Ingrese espesor : "
	leer espesor
	Escribir "Ingrese ancho: "
	leer base
	Escribir "Ingrese largo: "
	leer altura
	volumen = calcularVolumen(altura,base,espesor)
	escribir "Se necesitan ",volumen*105, "kilos de cemento"
	Escribir "se necesitan ",volumen*0.45, "metros cubicos de arena"
	Escribir "se necesitan ",volumen*0.9, " metros cuadrados de piedra"
	escribir "**************************************"
	menu()

	
FinSubProceso
SubProceso calculartecho()
	Escribir "Ingrese espesor : "
	leer espesor
	Escribir "Ingrese ancho: "
	leer base
	Escribir "Ingrese largo: "
	leer altura
	volumen = calcularVolumen(altura,base,espesor)
	escribir "Se necesitan ",volumen*33,  "kilos de cemento"
	Escribir "se necesitan ",volumen*0.072,  "metros cubicos de arena"
	Escribir "se necesitan ",volumen*0.072, " metros cuadrados de piedra"
	escribir "se necesitan ",volumen*7, " metros del hierro del 8y",volumen*4," metros del hierro del 6"
	escribir "**************************************"
	menu()
	
FinSubProceso
SubProceso calcularpisos()
	Escribir "Ingrese el ancho: "
	leer base
	Escribir "Ingrese el largo: "
	leer altura
	superficie = calcularSuperficie(base,altura)
	Escribir "La superficie del piso sera de ", superficie*1.1," metros cuadrados"
	escribir "**************************************"
	menu()
	
FinSubProceso
SubProceso calcularpintura()
	Escribir "Ingrese el ancho: "
	leer base
	Escribir "Ingrese el largo: "
	leer altura
	superficie = calcularSuperficie(base,altura)
	Escribir "Se nnecesitaran ",  superficie/6, "Litros de pintura"
	escribir "**************************************"
	menu()

FinSubProceso
SubProceso calculariluminacion()
	Escribir "Ingrese el ancho: "
	leer base
	Escribir "Ingrese el largo: "
	leer altura
	superficie = calcularSuperficie(base,altura)
	Escribir "La cantidad minima de iluminacion natural sera de ", superficie*0.2
	escribir "**************************************"
	menu()
	
	
FinSubProceso



	