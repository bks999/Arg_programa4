Algoritmo sin_titulo
	definir vocalSecreta,ingresarVocal , ingresasteVocal1, ingresasteVocal2 Como Caracter
	definir numAleat Como Entero
	numAleat<-Aleatorio(1,5)
	
	
	Segun numAleat Hacer
		1:
			vocalSecreta="a"
		2:
			vocalSecreta="e"
		3:
			vocalSecreta="i"
		4:
			vocalSecreta="o"
		De Otro Modo:
		5:	vocalSecreta="u"
			
	FinSegun
	
	

		
			Repetir
				escribir"Intenta adivinir la vocal secreta"
				leer ingresarVocal
				ingresasteVocal1=Minusculas(ingresarVocal)
				Si ingresasteVocal1="a" o ingresasteVocal1="e" o ingresasteVocal1="i" o ingresasteVocal1="o" o  ingresasteVocal1="u"  Entonces
					SI vocalSecreta==ingresasteVocal1 Entonces
						
						ESCRIBIR"Adivinaste la vocal secreta ",vocalSecreta," (",ingresasteVocal1,")"
					FinSi
				SiNo
					ESCRIBIR"VOCAL INVALIDA,VUELVA A INTENTARLO"
				Fin Si
				
				
			Mientras Que ingresasteVocal1 <> vocalSecreta 
			
			
		
			
			
		
		
		
		
		
	

	
FinAlgoritmo
