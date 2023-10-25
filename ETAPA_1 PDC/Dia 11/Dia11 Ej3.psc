Algoritmo dia11ej3
	
	Definir user, pass, menu, acepta Como Caracter
	Definir i, botellas, pesoBotellas, valorBotellas, saldo, saldoF Como Entero
	Definir logIn Como Logico
	
	logIn = falso
	i=0
	saldo=0
	saldoF=0
	menu="0"
	
	Repetir
		
		Escribir "------------------"
		Escribir "Ingrese el usuario"
		Escribir "------------------"
		
		Leer user
		
		Escribir "----------------"
		Escribir "Ingrese la clave"
		Escribir "----------------"
		
		Leer pass
		
		i=i+1
		
		si user == "Albus_D" y pass =="caramelosDeLimon" Entonces
			
			Escribir "------------------"
			escribir "Usuario Autorizado"
			Escribir "------------------"
			
			logIn=Verdadero
			
		sino 
			
			Escribir "----------------------------------"
			escribir "Usuario y/o contraseña incorrectos"
			Escribir "----------------------------------"
			
		FinSi
		
	mientras que i<3 y logIn=falso
	
	si i>=3 Entonces
		
		Escribir "---------------"
		escribir "Acceso denegado"
		Escribir "---------------"
		
	FinSi
	
	si logIn=Verdadero Entonces
		
		repetir
			
			escribir "=========MENU========="
			escribir " 1-Ingresar botellas"
			escribir " 2-Consultar saldo"
			escribir " 3-Salir"
			Escribir "======================"
			
			leer menu
			
			segun menu 
				
				opcion "1" , "Ingresar botellas":
					
					Escribir "-------------------------------"
					escribir "Ingrese la cantidad de botellas"
					Escribir "-------------------------------"
					leer botellas
					
					repetir 
						
						para i=1 hasta botellas 
							
							pesoBotellas=Aleatorio(100,3000)
							
							si pesoBotellas<=500 Entonces
								valorBotellas=50
							FinSi
							
							si pesoBotellas>500 y pesoBotellas<=1500 Entonces
								valorBotellas=125
							FinSi
							
							si pesoBotellas>1500 Entonces
								valorBotellas=200
							FinSi
							
							saldo=saldo+valorBotellas
							
							escribir "Botella " i " con peso " pesoBotellas "gr valor $" valorBotellas
							
						FinPara
						
						Escribir "-----------------------------------------"
						Escribir "El nuevo saldo será de: $" saldo
						Escribir "-----------------------------------------"
						
					Mientras Que i<botellas
					
					Escribir "-------------------------"
					Escribir "Acepta el valor ofrecido?"
					escribir "1-Si"
					escribir "2-No"
					Escribir "-------------------------"
					
					leer acepta
					
					si acepta=="Si" o acepta=="1" Entonces
						
						saldoF=saldoF+saldo
						
						Escribir "------------------------"
						escribir "Finalizando operacion..."
						escribir "Saldo actualizado"
						Escribir "------------------------"
						
					FinSi
					
					si acepta=="no" o acepta=="2" Entonces
						
						Escribir "--------------------"
						escribir "Devolviendo material"
						Escribir "--------------------"
						
					FinSi
					
					si acepta <> "si" y acepta <> "no" y acepta <>"1" y acepta <> "2"
						
						Escribir "-----------------"
						escribir "Opción incorrecta"	
						Escribir "-----------------"
						
					FinSi
					
					
				opcion "2" , "Consultar saldo":
					
					Escribir "-----------------------------"
					escribir "Su saldo es de $" saldoF
					Escribir "-----------------------------"
					
			FinSegun
			
		mientras que menu <> "3" y menu <> "salir"
		
	FinSi
	
FinAlgoritmo

