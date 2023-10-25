//3) Queremos realizar una encuesta a 6 personas, en esta encuesta:
//	# Indicaremos el sexo 1= masculino, 2=femenino
//	# sí trabaja 1=si trabaja 2=no trabaja
//	# Su sueldo (que estará entre 600 y 2000, valor entero, siempre y cuando trabaje sino es 0)
//	# Calcule y muestre:
//			a) Porcentaje de hombres / porcentaje de mujeres
//			b) Porcentaje de hombres que trabajan / porcentaje de mujeres que trabajan
//			c) Sueldo promedio de los hombres que trabajan / sueldo promedio de las mujeres q trabajan



Algoritmo ejercicio3_guiaExtra
	Definir nombre Como Caracter
	Definir sexo, trabajo, sueldo,i, contM, contF, contTM, contTF, sumaM, sumaF  Como Entero
	contM=0
	contF=0
	contTM=0
	sumaF=0
	sumaM=0
	contTF=0
	Para i=1 hasta 6 Hacer
		Escribir "**********************************************************"
		Escribir ""
		Escribir Sin Saltar "Ingrese su nombre: "
		Leer nombre
		Hacer
			Escribir "Ingrese 1 si su sexo es masculino, 2 si es femenino"
			Leer sexo
		Mientras Que sexo>2
		Si sexo=1 Entonces
			contM=contM+1
			Hacer
				Escribir "Ingrese 1 si trabaja, 2 si no trabaja"
				Leer trabajo
			Mientras Que trabajo>2
			Si trabajo=1 Entonces
				contTM=contTM+1
				Hacer
					Escribir "Ingrese su sueldo"
					Leer sueldo
				Hasta Que sueldo>=600 y sueldo<=2000
				sumaM=sumaM+sueldo
			SiNo
				sueldo=0
			FinSi
			Escribir ""
			
		SiNo
			contF=contF+1
			Hacer
				Escribir "Ingrese 1 si trabaja, 2 si no trabaja"
				Leer trabajo
			Mientras Que trabajo>2
			Si trabajo=1 Entonces
				contTF=contTF+1
				Hacer
					Escribir "Ingrese su sueldo"
					Leer sueldo
				Hasta Que sueldo>=600 y sueldo<=2000
				sumaF=sumaF+sueldo
			SiNo
				sueldo=0
			FinSi
			Escribir ""

		FinSi
	FinPara
	Escribir "******************************************************************"
	Escribir ""
	Escribir "El porcentaje de hombres es " contM/6*100 "%"
	Escribir "El porcentaje de mujeres es " contF/6*100 "%"
	Escribir ""
	Escribir "******************************************************************"
	Escribir ""
	Escribir "El porcentaje de hombres que trabajan es " contTM/contM*100 "%"
	Escribir "El porcentaje de mujeres que trabajan es " contTF/contF*100 "%"
	Escribir ""
	Escribir "******************************************************************"
	Escribir ""
	Escribir "El sueldo promedio de los hombres que trabajan es " sumaM/contTM
	Escribir "El sueldo promedio de los hombres que trabajan es " sumaM/contTM
	Escribir ""

FinAlgoritmo
