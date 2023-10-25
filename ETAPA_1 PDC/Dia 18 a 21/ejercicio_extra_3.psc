//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Algoritmo ejercicio_extra_3
	Definir vect1 como cadena
	Definir vect2 , n , i Como Entero
	Escribir "Ingrese el tamaño de dimension de desee"
	Leer n
	Dimension vect1(n)
	Dimension vect2(n)
	
	Escribir "Ingrese un nombre para llenar el vector"
	Para i=0 hasta n-1 Hacer
		Leer vect1(i)
		vect2(i)=Longitud(vect1(i))
	FinPara
	
	Para i=0 Hasta n-1 Hacer
		Escribir i+1 ": " vect1(i) ", de longitud " vect2(i)
	FinPara
	
FinAlgoritmo
