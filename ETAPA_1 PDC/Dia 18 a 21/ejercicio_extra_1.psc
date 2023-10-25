//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.


Algoritmo ejercicio_extra_1
	Definir vector1, vector2, i Como Entero
	Dimension vector1(5)
	Dimension vector2(5)
	
	Para i=0 Hasta 4 Hacer
		vector1(i)=Aleatorio(1,100)
		vector2(i)=Aleatorio(1,100)
		Escribir "Vector1(" i ")= " vector1(i)
		Escribir "Vector2(" i ")= " vector2(i)
	FinPara
	
FinAlgoritmo
