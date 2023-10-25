Algoritmo ejercicio_desayuno
	Definir desayuno, soloCortado, cortado Como Caracter
	Escribir "Que quieres tomar de desayuno (te/cafe)?"
	Leer desayuno
	
	Si desayuno = "cafe" Entonces
		Escribir " lo quieres solo o cortado?"
		Leer soloCortado
		Si soloCortado = "cortado" Entonces
			Escribir "lo prefieres con leche vegetal (si/no)?"
			Leer cortado
			Si cortado1 = "si" Entonces
				Escribir "Tu pedido de cafe cortado con leche vegetal se esta preparando"
			SiNo cortado1 = "no"
				Escribir "Tu pedido de cafe cortado se esta preparando"
			FinSi
		SiNo soloCortado = "solo"
			Escribir "Tu pedido de cafe solo se esta preparando"
		FinSi
	SiNo desayuno = "te"
		Escribir "Tu pedido de te se esta preparando"
	FinSi
///faltarian condiciones por si se escribe una opcion erronea.///
FinAlgoritmo
