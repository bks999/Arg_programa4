Algoritmo NOTAS_VERD_FALSO
	Definir nota1, nota2, nota3 Como Entero
	Definir verFalso Como Logico
	Escribir "Ingresa tus 3 notas"
	Leer nota1
	Leer nota2
	Leer nota3
	
	verFalso = nota1>=1 y nota1<=10
	verFalso = nota2>=1 y nota2<=10
	verFalso = nota3>=1 y nota3<=10
	
	Si verFalso Entonces 
		Escribir "Verdadero"
	SiNo
		Escribir "Falso"
	FinSi
	
FinAlgoritmo
