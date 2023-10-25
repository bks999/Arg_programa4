//Mostrar el área y perímetro de un rombo.

Algoritmo area_perimetro_rombo
	
	Definir diagonalMayor, diagonalMenor, areaRombo, perimetroRombo, valorL Como Real
	
	Escribir "Ingrese el valor del diagonal mayor del rombo"
	Leer diagonalMayor
	Escribir "Ingrese el valor del diagonal menor del rombo"
	Leer diagonalMenor
	
	areaRombo = (diagonalMayor * diagonalMenor) / 2
	
	Escribir "El area del rombo es " areaRombo
	
	valorL = raiz(( (diagonalMayor/2)^2 )+ ((diagonalMenor/2)^2) )
	perimetroRombo = valorL * 4
	
	Escribir "El perimetro del rombo es " perimetroRombo
FinAlgoritmo
