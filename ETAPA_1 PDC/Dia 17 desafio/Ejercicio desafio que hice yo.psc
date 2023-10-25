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
	Escribir "Ingrese la opcion de calculo"
	LEER num
	Hacer 
		Segun num Hacer
			1:
				calcularMuro
			2:
				calcularViga
			3:
				calcularColumna		
			4:
				calcularContrapisos
			5:
				calculartecho
			6:
				calcularpisos
			7:
				calcularpintura
			8:
				calculariluminacion
			9:Escribir " Confirma que desea salir?(S/N)"
				LEER  resp
				Si Mayusculas(resp) ="S" Entonces
					Escribir " Finalizó el proceso "
				SiNo
					si resp = "N"
						menu()
					SiNo
						escribir  "Opcion Invalida, intentelo de nuevo"
					FinSi
				FinSi
			De Otro Modo:
				escribir  "Opcion Invalida, intentelo de nuevo"
				menu()
				
		Fin Segun
	mientras que num <>9
FinSubProceso

SubProceso superficie <- calcularSuperficie(largo,altura)
	definir superficie Como Real
	superficie = largo*altura
FinSubProceso

SubProceso volumen <- calcularVolumen(espesor,largo,altura)
	Definir volumen Como Real
	volumen = espesor*largo*altura
FinSubProceso

SubProceso calcularMuro
	Definir espesorMuro, largoMuro, altoMuro Como real
	Escribir " ***************************************"
	Escribir "Ingrese el espesor del muro (A para 20cm/ B para 30cm)"
	Leer espesorMuro
	Escribir Sin Saltar "Ingrese el largo: "
	Leer largoMuro
	Escribir Sin Saltar "Ingrese el altura: "
	Leer altoMuro
	Hacer
		Segun espesorMuro Hacer
			30:
				Escribir "==============================="
				Escribir "Los materiales necesarios son:"
				Escribir calcularSuperficie(largoMuro,altoMuro) * 15.2 "kg de cemento."
				Escribir calcularSuperficie(largoMuro,altoMuro)  * 0.115 "m3 de arena."
				Escribir calcularSuperficie(largoMuro,altoMuro) * 120 " ladrillos."
				Escribir "==============================="
			20:
				Escribir "==============================="
				Escribir "Los materiales necesarios son:"
				Escribir calcularSuperficie(largoMuro,altoMuro) * 10.9 "kg de cemento."
				Escribir calcularSuperficie(largoMuro,altoMuro) * 0.09 "m3 de arena."
				Escribir calcularSuperficie(largoMuro,altoMuro) * 90 " ladrillos."
				Escribir "==============================="
				
				De Otro Modo:
				Escribir "Has ingresado mal el espesor, vuelve a intentarlo"
		FinSegun
	Mientras Que espesorMuro<>20 y espesorMuro<>30
	Escribir " ***************************************"
	menu()
FinSubProceso

SubProceso calcularViga
	//Nos debe pedir el largo de la viga. Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02
	//	m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
	//	Debemos mostrar al usuario la cantidad de materiales necesaria
	Definir largoViga Como Real
	Escribir "Ingrese el largo de la viga"
	Leer largoViga
	Escribir "Los materiales necesarios para el largo de viga ingresado son: "
	Escribir largoViga * 9 "kg de cemento"
	Escribir largoViga * 0.2 "m3 de arena"
	Escribir largoViga * 0.2 "m2 de piedra"
	Escribir largoViga * 4 "m de hierro del 8"
	Escribir largoViga * 3 "m de hierro del 4."
	menu()
FinSubProceso

SubProceso calcularColumna
	Definir largoColumna Como Real
	Escribir "Ingrese el largo de la columna"
	Leer largoColumna
	Escribir "Los materiales necesarios para el largo de columna ingresado son: "
	Escribir largoColumna * 7.5 "kg de cemento"
	Escribir largoColumna * 0.016 "m3 de arena"
	Escribir largoColumna * 0.016 "m2 de piedra"
	Escribir largoColumna * 6 "m de hierro del 10"
	Escribir largoColumna * 3 "m de hierro del 4."
	menu()
FinSubProceso

SubProceso calcularContrapisos
	Definir espesorContrapiso, anchoContrapiso, largoContrapiso, volumen como real
	volumen=calcularVolumen(espesorContrapiso,anchoContrapiso,largoContrapiso)
	Escribir "Los materiales necesarios para el contrapiso son: "
	Escribir volumen * 105 "kg de cemento"
	Escribir volumen * 0.45 "m3 de arena"
	Escribir volumen * 0.9 "m3 de piedra."
	menu()
FinSubProceso

SubProceso calcularTecho
	Definir espesorTecho, anchoTecho, largoTecho, volumen como real
	volumen=calcularVolumen(espesorTecho,anchoTecho,largoTecho)
	Escribir "Los materiales necesarios para el techo son: "
	Escribir volumen * 33 "kg de cemento"
	Escribir volumen * 0.072 "m3 de arena"
	Escribir volumen * 0.072 "m3 de piedra."
	Escribir volumen * 7 "m de hierro del 8"
	Escribir volumen * 4 "m de hierro del 6."
	menu()
FinSubProceso

SubProceso calcularPisos
	//	Nos debe pedir ancho y largo del paño de piso a colocar. Teniendo esos datos se debe calcular la
	//	superficie y añadirle un 10% extra por recortes
	//	Mostrar el resultado en m2
	Definir superficie, anchoPiso, largoPiso Como Real
	superficie = calcularSuperficie(anchoPiso,largoPiso)
	Escribir Sin Saltar "Ingrese el ancho del panio del piso: "
	Leer anchoPiso
	Escribir Sin Saltar "Ingrese el largo del panio del piso: "
	Leer largoPiso
	Escribir "La superficie del piso es de " superficie * 110/100 "m2."
	menu()
FinSubProceso

SubProceso calcularPintura
	Definir superficie, base, altura Como Real
	superficie = calcularSuperficie(base, altura)
	Escribir Sin Saltar "Ingrese el ancho del muro: "
	Leer base
	Escribir Sin Saltar "Ingrese la altura del muro: "
	Leer altura
	Escribir "La superficie del muro es " superficie "m2 y se necesitaran " superficie /6 "litros de pintura."
	menu()
FinSubProceso

SubProceso calcularIluminacion
	Definir superficie, base, altura Como Real
	superficie = calcularSuperficie(base, altura)
	Escribir Sin Saltar "Ingrese el ancho de la habitacion: "
	Leer base
	Escribir Sin Saltar "Ingrese la altura de la habitacion: "
	Leer altura
	Escribir "La superficie de la habitacion es " superficie "m2 y la cantidad minima de superficie de iluminacion natural es " superficie *0.20 "m2."
	menu()
FinSubProceso

