Algoritmo consumo_combustible_automovil
	Definir litrosEstacion, litrosCargados, litrosConsumidos, litrosFinal, kilometrosRecorridos, consumo Como Real
	
	Escribir "Litros con los que ya contaba el automovil al llegar a la estacion: "
	Leer litrosEstacion
	
	Escribir "Litros cargados en la estacion: "
	Leer litrosCargados
	
	Escribir "Litros luego de terminar el recorrido: "
	Leer litrosFinal
	
	litrosConsumidos = (litrosEstacion + litrosCargados) - litrosFinal
	
	Escribir "Kilometros recorridos desde la estacion: "
	Leer kilometrosRecorridos
	
	Escribir "El usuario cuenta con " litrosEstacion "lt y carga " litrosCargados "lt en la estacion. Recorre luego " kilometrosRecorridos "km desde la estacion."
	
	consumo = kilometrosRecorridos / litrosConsumidos
	
	Escribir "Consumo de lt durante el recorrido: " consumo "km/lt"
	
FinAlgoritmo
