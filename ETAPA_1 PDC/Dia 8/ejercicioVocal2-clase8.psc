
	Algoritmo sin_titulo
		definir vocalSecreta,ingresarVocal , ingresasteVocal1 Como Caracter
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
		
		escribir"Intenta adivinir la vocal secreta"
		leer ingresarVocal
		ingresasteVocal1=Minusculas(ingresarVocal)
		
		
		Si ingresasteVocal1="a" o ingresasteVocal1="e" o ingresasteVocal1="i" o ingresasteVocal1="o" o  ingresasteVocal1="u"  Entonces
			
			
				Repetir
					
					Escribir "Ups! LA VOCAL QUE INGRESASTE NO ES IGUAL A LA VOCAL SECRETA. VUELVE A INTENTARLO"
					leer ingresasteVocal1
					
				
				
				Mientras Que ingresasteVocal1 <> vocalSecreta 
				
			
				Escribir "Adivinaste la vocal secreta ",vocalSecreta," (",ingresasteVocal1,")"
		
			
			
			
			
			
			
		SiNo
			escribir "Vocal invalida vuelve a intentarlo"
		Fin Si
		
FinAlgoritmo
