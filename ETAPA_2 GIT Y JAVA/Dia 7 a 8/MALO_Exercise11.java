package guide4.malo;

import java.util.Scanner;

public class MALO_Exercise11 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String frase;

		System.out.println("Ingrese una palabra");
		frase = sc.nextLine();

		transformar(frase.toLowerCase());

	}

	public static void transformar(String frase) {

		String aux = "";
		
		for (int i = 0; i < frase.length(); i++) {
			switch (frase.substring(i, i + 1)) {
				case "a":
					aux = frase.substring(0, i);
					aux = aux.concat("@");
					aux = aux.concat(frase.substring(i + 1, frase.length()));
					frase = aux;
					break;
				case "e":
					aux = frase.substring(0, i);
					aux = aux.concat("#");
					aux = aux.concat(frase.substring(i + 1, frase.length()));
					frase = aux;
					break;
				case "i":
					aux = frase.substring(0, i);
					aux = aux.concat("$");
					aux = aux.concat(frase.substring(i + 1, frase.length()));
					frase = aux;
					break;
				case "o":
					aux = frase.substring(0, i);
					aux = aux.concat("%");
					aux = aux.concat(frase.substring(i + 1, frase.length()));
					frase = aux;
					break;
				case "u":
					aux = frase.substring(0, i);
					aux = aux.concat("*");
					aux = aux.concat(frase.substring(i + 1, frase.length()));
					frase = aux;
					break;
			}
		}
		System.out.println(frase);
		
//		frase = frase.replaceAll("[aeiou]", "@"); //Reemplaza aeiou por #
//		frase = frase.replaceFirst("a", "@"); //Reemplaza la primera "a" encontrada por "@"
//		frase = frase.replace("a", "@"); //Reemplaza todas las "a" por "@"
	}
}
