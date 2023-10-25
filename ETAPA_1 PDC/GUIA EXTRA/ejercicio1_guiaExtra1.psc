//1) Crea un programa que pida una frase al usuario y diga cuantas palabras contiene. 
//(Ayudita! los espacios podrían funcionar como advertencia para los cortes de palabras)
//

Algoritmo ejercicio1_guiaExtra1
	Definir frase, aux como cadena
	Definir i, cont Como Entero
	Escribir "Ingrese una frase"
	Leer frase
	aux= " "
	cont=1
	Para i=0 hasta Longitud(frase) Hacer
		Si Subcadena(frase,i,i)= aux Entonces
			cont=cont+1
		FinSi
	FinPara
	
	Escribir "La frase ingresada cuenta con " cont " palabras."
	
FinAlgoritmo
