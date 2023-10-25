//2)  Crea un programa que pida al usuario su nombre y apellido y los muestre escritos de la forma correcta 
//(Primera letra en mayúsculas, y el resto en minúscula. Siempre debemos pensar que el usuario puede ingresar 
//los datos de una forma distinta a la que yo deseaba que lo hiciera)


Algoritmo ejercicio2_guiaExtra1
	Definir nombre, apellido Como Cadena
	
	Escribir "Ingrese su nombre(en caso de ser varios, ingreselos todos."
	Leer nombre
	Escribir "Ingrese su apellido(en caso de ser varios, ingreselos todos."
	Leer apellido
	
	minMayusc(nombre)
	minMayusc(apellido)
	
FinAlgoritmo

SubProceso minMayusc(frase)
	Definir i, m, cont Como Entero
	Definir aux, nombre1 como Caracter
	aux= ""
	nombre1= ""
	cont=0
	m=0
	Para i=0 hasta Longitud(frase) Hacer
		Si i=0 o i=m Entonces
			aux=Subcadena(frase,i,i)
			aux=Mayusculas(aux)
			nombre1=Concatenar(nombre1,aux)
			cont= cont+1
		SiNo
			Si Subcadena(frase,i,i)<>" " o i<>cont Entonces
				aux=Subcadena(frase,i,i)
				aux=Minusculas(aux)
				nombre1=concatenar(nombre1,aux)
				cont=cont+1
			SiNo
				si Subcadena(frase,i,i)=" " Entonces
					aux=" " 
					nombre1=concatenar(nombre1,aux)
					cont=cont+1
					m=cont
				FinSi
			FinSI
		FinSi
	FinPara
	Escribir nombre1
	
FinSubProceso
